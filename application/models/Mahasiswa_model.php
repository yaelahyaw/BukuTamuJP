<?php
class Mahasiswa_model extends CI_Model
{
    public function getAllMahasiswa()
    {
        return $this->db->get('mahasiswa')->result_array();
    }
    public function tambahDataTamu()
    {
        date_default_timezone_set('Asia/Jakarta');
        $data = [
            "nama" => $this->input->post('nama', true),
            "alamat" => $this->input->post('alamat', true),
            "nohp" => $this->input->post('nohp', true),
            "jeniskelamin" => $this->input->post('jeniskelamin', true),
            "keperluan" => $this->input->post('keperluan', true),
            "datetime" => date('Y/m/d'),
            "bulan" => date('F'),
            "waktu" => date('H:i:s'),
        ];
        $this->db->insert('mahasiswa', $data);
    }
    public function hapusDataTamu($id)
    {
        // $this->db->where('id', $id);
        $this->db->delete('mahasiswa', ['id' => $id]);
    }
    public function getTamuById($id)
    {
        return $this->db->get_where('mahasiswa', ['id' => $id])->row_array();
    }
    public function ubahDataTamu()
    {
        $data = [

            "nama" => $this->input->post('nama', true),
            "alamat" => $this->input->post('alamat', true),
            "nohp" => $this->input->post('nohp', true),
            "jeniskelamin" => $this->input->post('jeniskelamin', true),
            "keperluan" => $this->input->post('keperluan', true),
            "datetime" => date('Y/m/d'),
            "waktu" => date('H:i:s'),
        ];
        $this->db->where('id', $this->input->post('id'));
        $this->db->update('mahasiswa', $data);
    }
    public function cariDataTamu()
    {
        $keyword = $this->input->post('keyword', true);
        $this->db->like('nama', $keyword);
        $this->db->or_like('alamat', $keyword);
        $this->db->or_like('nohp', $keyword);
        $this->db->or_like('jeniskelamin', $keyword);
        $this->db->or_like('keperluan', $keyword);
        $this->db->or_like('datetime', $keyword);
        return $this->db->get('mahasiswa')->result_array();
    }
    public function baca_data($data)
    {
        $this->db->select('*');
        $this->db->from('mahasiswa');
        $this->db->where($data);
        $query = $this->db->get();
        $result = $query->result_array();
        return $result;
    }
}
