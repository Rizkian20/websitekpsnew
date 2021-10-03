<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_beritaadmin extends CI_Model
{
    //ambil semua berita
    public function get_berita()
    {
        return $this->db->get('berita')->result_array();
    }

    //ambil berita berdasarkan id
    public function get_beritaid($id_berita)
    {
        return $this->db->get_where('berita', ['id_berita' => $id_berita])->row_array();
    }

    //pagination
    public function p_berita($limit, $start)
    {
        return $this->db->get('berita', $limit, $start)->result_array();
    }
    public function jumlah_berita()
    {
        return $this->db->get('berita')->num_rows();
    }

    //edit berita
    public function edit_berita()
    {
        $data  = [
            "judul" => $this->input->post('judul'),
            "isi" => $this->input->post('isi'),
            "penulis" => $this->input->post('penulis'),
            "g_berita" => $this->input->post('g_berita')
        ];
        $this->db->where('id_berita', $this->input->post('id_berita'));
        $this->db->update('berita', $data);
    }

    //hapus berita berdasarkan id
    public function hapus_berita($id_berita)
    {
        $this->db->where('id_berita', $id_berita);
        $this->db->delete('berita');
    }
}
