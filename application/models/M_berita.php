<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_berita extends CI_Model
{
    //ambil semua berita dan limit saat ditampilkan
    public function get_berita()
    {
        $this->db->select('*');
        $this->db->from('berita');
        $this->db->order_by('id_berita', 'DESC');
        $this->db->limit(3);
        return $this->db->get()->result_array();
    }

    //ambil berita berdasarkan id
    public function get_beritaid($id_berita)
    {
        return $this->db->get_where('berita', ['id_berita' => $id_berita])->row_array();
    }

    //Pagination
    public function p_berita($limit, $start)
    {
        return $this->db->get('berita', $limit, $start)->result_array();
    }
    public function jumlah_berita()
    {
        return $this->db->get('berita')->num_rows();
    }

    //ambil kata kunci
    public function get_keyword($keyword)
    {
        $this->db->select('*');
        $this->db->from('berita');
        $this->db->like('judul', $keyword, 'both');
        $this->db->or_like('isi', $keyword, 'both');
        return $this->db->get()->result_array();
    }

    //hitung jumlah kategori
    public function jumlah_kategori()
    {
        $this->db->select('COUNT(id_berita) jumlah, kategori');
        $this->db->from('berita');
        $this->db->group_by('kategori');
        return $this->db->get()->result_array();
    }
}
