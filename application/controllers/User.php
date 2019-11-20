<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Mahasiswa_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['title'] = 'Profile Saya';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/index', $data);
        $this->load->view('templates/footer');
    }
    public function buku()
    {
        $data['title'] = 'Halaman Buku Tamu';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['mahasiswa'] = $this->Mahasiswa_model->getAllMahasiswa();
        if ($this->input->post('keyword')) {
            $data['mahasiswa'] = $this->Mahasiswa_model->cariDataTamu();
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/buku', $data);
        $this->load->view('templates/footer');
    }
    public function tambah()
    {
        $data['title'] = 'Halaman Tambah Tamu';
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required');
        $this->form_validation->set_rules('nohp', 'Nohp', 'required|numeric');
        $this->form_validation->set_rules('keperluan', 'keperluan', 'required');
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('user/tambah', $data);
            $this->load->view('templates/footer');
        } else {
            $this->Mahasiswa_model->tambahDataTamu();
            $this->session->set_flashdata('flash', 'Ditambahkan');
            redirect('user/buku');
        }
    }
    public function detail($id)
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['title'] = 'Halaman Detail Tamu';
        $data['mahasiswa'] = $this->Mahasiswa_model->getTamuById($id);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('user/detail', $data);
        $this->load->view('templates/footer');
    }
    public function ubah($id)
    {
        $data['title'] = 'Halaman Ubah Data Tamu';
        $data['mahasiswa'] = $this->Mahasiswa_model->getTamuById($id);
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('user/ubah', $data);
            $this->load->view('templates/footer');
        } else {
            $this->Mahasiswa_model->ubahDataTamu();
            $this->session->set_flashdata('flash', 'DiUbah');
            redirect('user/buku');
        }
    }

    public function print()
    {
        $data['title'] = 'Print Data Tamu';
        $data['mahasiswa'] = $this->Mahasiswa_model->getAllMahasiswa('mahasiswa');
        $this->load->view('templates/header', $data);
        $this->load->view('user/print', $data);
        $this->load->view('templates/footer');
    }
    public function edit()
    {
        $data['title'] = 'Edit Profile';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->form_validation->set_rules('name', 'Full Name', 'required|trim');
        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('user/edit', $data);
            $this->load->view('templates/footer');
        } else {
            $name = $this->input->post('name');
            $email = $this->input->post('email');
            // cek jika ada gambar yang akan diupload
            $upload_image = $_FILES['image']['name'];
            if ($upload_image) {
                $config['allowed_types'] = 'gif|jpg|png';
                $config['max_size']      = '2048';
                $config['upload_path'] = './assets/img/profile/';
                $this->load->library('upload', $config);
                if ($this->upload->do_upload('image')) {
                    $old_image = $data['user']['image'];
                    if ($old_image != 'default.jpg') {
                        unlink(FCPATH . 'assets/img/profile/' . $old_image);
                    }
                    $new_image = $this->upload->data('file_name');
                    $this->db->set('image', $new_image);
                } else {
                    echo $this->upload->dispay_errors();
                }
            }
            $this->db->set('name', $name);
            $this->db->where('email', $email);
            $this->db->update('user');
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Your profile has been updated!</div>');
            redirect('user');
        }
    }


    public function changePassword()
    {
        $data['title'] = 'Ganti Password';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->form_validation->set_rules('current_password', 'Current Password', 'required|trim');
        $this->form_validation->set_rules('new_password1', 'New Password', 'required|trim|min_length[3]|matches[new_password2]');
        $this->form_validation->set_rules('new_password2', 'Confirm New Password', 'required|trim|min_length[3]|matches[new_password1]');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('user/changepassword', $data);
            $this->load->view('templates/footer');
        } else {
            $current_password = $this->input->post('current_password');
            $new_password = $this->input->post('new_password1');
            if (!password_verify($current_password, $data['user']['password'])) {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Wrong current password!</div>');
                redirect('user/changepassword');
            } else {
                if ($current_password == $new_password) {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">New password cannot be the same as current password!</div>');
                    redirect('user/changepassword');
                } else {
                    // password sudah ok
                    $password_hash = password_hash($new_password, PASSWORD_DEFAULT);

                    $this->db->set('password', $password_hash);
                    $this->db->where('email', $this->session->userdata('email'));
                    $this->db->update('user');

                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Password changed!</div>');
                    redirect('user/changepassword');
                }
            }
        }
    }
}
