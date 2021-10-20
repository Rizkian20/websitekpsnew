<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_portofolio extends CI_Model
{
    //Ambil semua data portofolio
    public function get_portofolio()
    {
        return $this->db->get('portofolio')->result_array();
    }

    //pagination
    public function jumlah_portofolio()
    {
        return $this->db->get('portofolio')->num_rows();
    }
    public function p_portofolio($limit, $start)
    {
        return $this->db->get('portofolio', $limit, $start)->result_array();
    }

    //ambil data kategori 
    public function get_kategori()
    {
        $this->db->select('kategori_p');
        $this->db->from('portofolio');
        $this->db->group_by('kategori_p');
        return $this->db->get()->result_array();
    }

    //ambil portofolio berdasarkan kategori
    public function get_portofoliobykategori()
    {
        $kategori = $this->get_kategori();
        foreach ($kategori as $value) {
            $portofolio[$value['kategori_p']] = $this->db->get_where('portofolio', ['kategori_p' => $value['kategori_p']])->result_array();
        }
        return $portofolio;
    }

    //ambil portofolio berdasarkan id
    public function get_portofolioid($id_portofolio)
    {
        return $this->db->get_where('portofolio', ['id_portofolio' => $id_portofolio])->row_array();
    }

    //hapus portofolio
    public function hapus_portofolio($id_portofolio)
    {
        $this->db->where('id_portofolio', $id_portofolio);
        $this->db->delete('portofolio');
    }
}
