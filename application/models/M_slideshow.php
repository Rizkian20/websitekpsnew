<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_slideshow extends CI_Model
{
    //ambil data slideshow dan limit slideshow yang ditampilkan pada home
    public function get_slideshow()
    {
        $this->db->select('*');
        $this->db->from('slideshow');
        $this->db->order_by('id_slideshow', 'DESC');
        $this->db->limit(3);
        return $this->db->get()->result_array();
    }

    //pagination pada hal admin
    public function p_slideshow($limit, $start)
    {
        return $this->db->get('slideshow', $limit, $start)->result_array();
    }
    public function jumlah_slideshow()
    {
        return $this->db->get('slideshow')->num_rows();
    }

    //ambil slideshow berdasarkan id
    public function get_slideshowid($id_slideshow)
    {
        return $this->db->get_where('slideshow', ['id_slideshow' => $id_slideshow])->row_array();
    }

    //edit slideshow
    public function edit_slideshow()
    {
        $data  = [
            "j_slideshow" => $this->input->post('judul', true),
            "d_slideshow" => $this->input->post('deskripsi', true),
            "g_slideshow" => $this->input->post('gambar', true),
        ];
        $this->db->where('id_slideshow', $this->input->post('id_slideshow'));
        $this->db->update('slideshow', $data);
    }


    public function hapus_slideshow($id_slideshow)
    {
        $this->db->where('id_slideshow', $id_slideshow);
        $this->db->delete('slideshow');
    }
}
