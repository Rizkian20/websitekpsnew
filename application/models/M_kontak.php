<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_kontak extends CI_Model
{
    //ambil semua data di dalam tabel kontak
    public function get_kontak()
    {
        return $this->db->get('kontak')->result_array();
    }

    //ambil data kontak berdasarkan id
    public function get_kontakid($id_kontak)
    {
        return $this->db->get_where('kontak', ['id_kontak' => $id_kontak])->row_array();
    }

    //edit kontak
    public function edit_kontak()
    {
        $data  = [
            "email" => $this->input->post('email'),
            "no_hp" => $this->input->post('no_hp'),
            "alamat" => $this->input->post('alamat')
        ];
        $this->db->where('id_kontak', $this->input->post('id_kontak'));
        $this->db->update('kontak', $data);
    }
}
