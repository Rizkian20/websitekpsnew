<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_tentangkami extends CI_Model
{
    public function get_visi()
    {
        return $this->db->get('visi')->result_array();
    }
    public function get_misi()
    {
        return $this->db->get('misi')->result_array();
    }
    public function tambah_visi()
    {
        $data  = [
            "visiperusahaan" => $this->input->post('visi'),
        ];
        $this->db->insert('visi', $data);
    }
    public function editvisi()
    {
        $data  = [
            "visiperusahaan" => $this->input->post('visi'),
        ];
        $this->db->insert('visi', $data);
    }

    public function tambah_misi()
    {
        $data  = [
            "misiperusahaan" => $this->input->post('misi'),
        ];
        $this->db->insert('misi', $data);
    }
}
