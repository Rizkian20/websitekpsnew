<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_katalogadmin extends CI_Model
{
    public function get_kategori()
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

    //Tambah Kategori
    public function tambahkategori()
    {
        $data  = [
            "id_kat_barang" => $this->input->post('nomor'),
            "kat_barang" => $this->input->post('kategori'),
        ];
        $this->db->insert('kat_barang', $data);
    }

    public function tambahbarang()
    {
        $data  = [
            "nama_barang" => $this->input->post('nama_barang'),
            "id_kat_barang" => $this->input->post('id_kat_barang'),
            "harga_barang" => $this->input->post('harga_barang'),
        ];
        $this->db->insert('data_barang', $data);
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



    public function get_kategoribyid($id_kat_barang)
    {
        return $this->db->get_where('kat_barang', ['id_kat_barang' => $id_kat_barang])->row_array();
    }
    public function editkategori()
    {
        $data  = [
            "id_kat_barang" => $this->input->post('id_kat_barang'),
            "kat_barang" => $this->input->post('kat_barang')
        ];
        $this->db->where('id_kat_barang', $this->input->post('id_kat_barang'));
        $this->db->update('kat_barang', $data);
    }


    public function get_barangbyid($id_barang)
    {
        return $this->db->get_where('data_barang', ['id_barang' => $id_barang])->row_array();
    }
    public function editbarang()
    {
        $data  = [
            "nama_barang" => $this->input->post('nama_barang'),
            "id_kat_barang" => $this->input->post('id_kat_barang'),
            "harga_barang" => $this->input->post('harga_barang'),
        ];
        $this->db->where('id_barang', $this->input->post('id_barang'));
        $this->db->update('data_barang', $data);
    }


    public function detailbarangbykategori($limit, $start, $id = null)
    {
        return $this->db->get('data_barang', $limit, $start)->where(['id_kat_barang' => $id])->result_array();
    }

    //Hapus Kategori
    public function hapuskategori($id_kat_barang)
    {
        $this->db->where('id_kat_barang', $id_kat_barang);
        $this->db->delete('kat_barang');
    }

    //Hapus Kategori
    public function hapusbarang($id_barang)
    {
        $this->db->where('id_barang', $id_barang);
        $this->db->delete('data_barang');
    }
}
