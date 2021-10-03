<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_layanan extends CI_Model
{
    //Ambil semua data layanan
    public function get_layanan()
    {
        return $this->db->get('daftarlayanan')->result_array();
    }

    //Pagination
    public function p_layanan($limit, $start)
    {
        return $this->db->get('daftarlayanan', $limit, $start)->result_array();
    }
    public function jumlah_layanan()
    {
        return $this->db->get('daftarlayanan')->num_rows();
    }

    //Tambah Layanan
    public function tambah_layanan()
    {
        $data  = [
            "layanan" => $this->input->post('layanan'),
            "deskripsi" => $this->input->post('deskripsi'),
            "icon_layanan" => $this->input->post('icon_layanan')
        ];
        $this->db->insert('daftarlayanan', $data);
    }

    //Edit layanan
    public function get_layananid($id_layanan)
    {
        return $this->db->get_where('daftarlayanan', ['id_layanan' => $id_layanan])->row_array();
    }
    public function edit_layanan()
    {
        $data  = [
            "layanan" => $this->input->post('layanan'),
            "deskripsi" => $this->input->post('deskripsi'),
            "icon_layanan" => $this->input->post('icon_layanan')
        ];
        $this->db->where('id_layanan', $this->input->post('id_layanan'));
        $this->db->update('daftarlayanan', $data);
    }

    //Hapus Layanan
    public function hapus_layanan($id_layanan)
    {
        $this->db->where('id_layanan', $id_layanan);
        $this->db->delete('daftarlayanan');
    }
}
