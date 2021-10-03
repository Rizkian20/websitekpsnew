<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_testimoni extends CI_Model
{
    //ambil semua testimoni
    public function get_testimoni()
    {
        return $this->db->get('testimoni')->result_array();
    }

    //ambil testimoni berdasarkan id
    public function get_testimoniid($id_testimoni)
    {
        return $this->db->get_where('testimoni', ['id_testimoni' => $id_testimoni])->row_array();
    }

    //pagination
    public function p_testimoni($limit, $start)
    {
        return $this->db->get('testimoni', $limit, $start)->result_array();
    }
    public function jumlah_testimoni()
    {
        return $this->db->get('testimoni')->num_rows();
    }

    //hapus testimoni
    public function hapus_testimoni($id_testimoni)
    {
        $this->db->where('id_testimoni', $id_testimoni);
        $this->db->delete('testimoni');
    }
}
