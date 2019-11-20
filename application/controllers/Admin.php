<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
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
        $data['title'] = 'Dashboard';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/index', $data);
        $this->load->view('templates/footer');
    }
    public function buku()
    {
        $data['title'] = 'Halaman Buku Tamu';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['mahasiswa'] = $this->Mahasiswa_model->getAllMahasiswa();

        $jan = array('bulan' => 'Januari');
        $data['january'] = $this->Mahasiswa_model->baca_data($jan);

        $feb = array('bulan' => 'February');
        $data['february'] = $this->Mahasiswa_model->baca_data($feb);

        $mar = array('bulan' => 'Maret');
        $data['maret'] = $this->Mahasiswa_model->baca_data($mar);

        $apr = array('bulan' => 'April');
        $data['april'] = $this->Mahasiswa_model->baca_data($apr);

        // Filter bulan Mei
        $may = array('bulan' => 'May');
        $data['mei'] = $this->Mahasiswa_model->baca_data($may);

        // Filter bulan Juni
        $jun = array('bulan' => 'June');
        $data['juni'] = $this->Mahasiswa_model->baca_data($jun);

        // Filter bulan Juli
        $jul = array('bulan' => 'July');
        $data['juli'] = $this->Mahasiswa_model->baca_data($jul);

        $aug = array('bulan' => 'August');
        $data['august'] = $this->Mahasiswa_model->baca_data($aug);

        $sep = array('bulan' => 'September');
        $data['september'] = $this->Mahasiswa_model->baca_data($sep);

        $oct = array('bulan' => 'October');
        $data['october'] = $this->Mahasiswa_model->baca_data($oct);

        $nov = array('bulan' => 'November');
        $data['november'] = $this->Mahasiswa_model->baca_data($nov);

        $desc = array('bulan' => 'December');
        $data['december'] = $this->Mahasiswa_model->baca_data($desc);

        $filter = array(
            'bulan' => date('F'),
            'tahun' => date('Y')
        );
        $data['tamu'] = $this->Mahasiswa_model->baca_data($filter);

        if ($this->input->post('keyword')) {
            $data['mahasiswa'] = $this->Mahasiswa_model->cariDataTamu();
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar',$data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/buku', $data); 
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
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('admin/tambah', $data);
            $this->load->view('templates/footer');
        } else {
            $this->Mahasiswa_model->tambahDataTamu();
            $this->session->set_flashdata('flash', 'Ditambahkan');
            redirect('admin/buku');
        }
    }
    public function hapus($id)
    {
        $this->Mahasiswa_model->hapusDataTamu($id);
        $this->session->set_flashdata('flash', 'DiHapus');
        redirect('admin/buku');
    }

    public function detail($id)
    {
        $data['title'] = 'Halaman Detail Tamu';
        $data['mahasiswa'] = $this->Mahasiswa_model->getTamuById($id);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('admin/detail', $data);
        $this->load->view('templates/footer');
    }
    public function ubah($id)
    {
        $data['title'] = 'Halaman Ubah Data Tamu';
        $data['mahasiswa'] = $this->Mahasiswa_model->getTamuById($id);
        $this->form_validation->set_rules('alamat', 'Alamat', 'required');
        $this->form_validation->set_rules('keperluan', 'keperluan', 'required');
        $this->form_validation->set_rules('datetime', 'datetime', 'required');
        $data['jeniskelamin'] = ['Laki-Laki', 'Perempuan'];
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('admin/ubah', $data);
            $this->load->view('templates/footer');
        } else {
            $this->Mahasiswa_model->ubahDataTamu();
            $this->session->set_flashdata('flash', 'DiUbah');
            redirect('admin/buku');
        }
    }

    public function print()
    {
        $data['title'] = 'Halaman Print';
        $data['mahasiswa'] = $this->Mahasiswa_model->getAllMahasiswa('mahasiswa');
        $this->load->view('templates/header', $data);
        $this->load->view('admin/print', $data);
        $this->load->view('templates/footer');
    }
    public function aksi()
    {
        $data['title'] = 'Halaman Aksi Buku Tamu';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['mahasiswa'] = $this->Mahasiswa_model->getAllMahasiswa();
        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('admin/aksi', $data);
            $this->load->view('templates/footer');
        } else {
            $this->Mahasiswa_model->tambahDataTamu();
            $this->session->set_flashdata('flash', 'Ditambahkan');
            redirect('admin/buku');
        }
    }
    public function cetak()
    {
        $data['title'] = 'Halaman Cetak';
        $data['mahasiswa'] = $this->Mahasiswa_model->getAllMahasiswa();
        $this->load->view('templates/header', $data);
        $this->load->view('admin/cetak', $data);
        $this->load->view('templates/footer');
    }
    public function role()
    {
        $data['title'] = 'Role';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['role'] = $this->db->get('user_role')->result_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/role', $data);
        $this->load->view('templates/footer');
    }


    public function roleAccess($role_id)
    {
        $data['title'] = 'Role Access';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['role'] = $this->db->get_where('user_role', ['id' => $role_id])->row_array();

        $this->db->where('id !=', 1);
        $data['menu'] = $this->db->get('user_menu')->result_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/role-access', $data);
        $this->load->view('templates/footer');
    }


    public function changeAccess()
    {
        $menu_id = $this->input->post('menuId');
        $role_id = $this->input->post('roleId');

        $data = [
            'role_id' => $role_id,
            'menu_id' => $menu_id
        ];

        $result = $this->db->get_where('user_access_menu', $data);

        if ($result->num_rows() < 1) {
            $this->db->insert('user_access_menu', $data);
        } else {
            $this->db->delete('user_access_menu', $data);
        }

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Access Changed!</div>');
    }
}
