<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_keranjang extends CI_Model
{
    public function get_katalog()
    { {
            return $this->db->get('kat_barang')->result_array();
        }
    }
    //Pagination
    public function p_kat_barang($limit, $start, $keyword = null)
    {
        $this->db->select('*');
        $this->db->from('kat_barang');
        if ($keyword != null) {
            $this->db->like('kat_barang', $keyword, 'both');
        }
        $this->db->limit($limit, $start);
        return $this->db->get()->result_array();
    }
    public function jumlah_kat_barang($keyword = null)
    {
        $this->db->select('*');
        $this->db->from('kat_barang');
        if ($keyword != null) {
            $this->db->like('kat_barang', $keyword, 'both');
        }
        return $this->db->get()->num_rows();
    }

    //ambil kata kunci
    public function get_keyword_kategori($keyword)
    {
        $this->db->select('*');
        $this->db->from('kat_barang');
        $this->db->like('kat_barang', $keyword, 'both');
        return $this->db->get()->result_array();
    }

    //hitung jumlah kategori
    public function jumlah_kategori()
    {
        $this->db->select('COUNT(id_kat_barang) jumlah, kat_barang');
        $this->db->from('kat_barang');
        $this->db->group_by('kat_barang');
        return $this->db->get()->result_array();
    }

    //Pagination
    public function p_data_barang($limit, $start, $id)
    {
        $this->db->select('*');
        $this->db->from('data_barang');
        $this->db->where('id_kat_barang', $id);
        $this->db->limit($limit, $start);
        return $this->db->get()->result_array();
    }
    public function jumlah_data_barang($id)
    {
        return $this->db->get_where('data_barang', ['id_kat_barang' => $id])->num_rows();
    }

    public function get_kategori()
    {
        return $this->db->get('kat_barang')->result_array();
    }

    public function detailbarangbykategori($id = null)
    {
        return $this->db->get_where('data_barang', ['id_kat_barang' => $id])->result_array();
    }
}
