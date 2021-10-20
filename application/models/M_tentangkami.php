<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_tentangkami extends CI_Model
{
    public function get_visi()
    {
        return $this->db->get('visi')->result_array();
    }

    public function tambah_visi()
    {
        $data  = [
            "visiperusahaan" => $this->input->post('visi'),
        ];
        $this->db->insert('visi', $data);
    }
    public function edit_visi()
    {
        $data  = [
            "visiperusahaan" => $this->input->post('visi'),
        ];
        $this->db->where('id_visi', $this->input->post('id_visi'));
        $this->db->update('visi', $data);
    }
    public function get_visiid($id_visi)
    {
        return $this->db->get_where('visi', ['id_visi' => $id_visi])->row_array();
    }
    public function hapus_visi($id_visi)
    {
        $this->db->where('id_visi', $id_visi);
        $this->db->delete('visi');
    }



    public function get_misi()
    {
        return $this->db->get('misi')->result_array();
    }
    public function tambah_misi()
    {
        $data  = [
            "misiperusahaan" => $this->input->post('misi'),
        ];
        $this->db->insert('misi', $data);
    }
    public function edit_misi()
    {
        $data  = [
            "misiperusahaan" => $this->input->post('misi'),
        ];
        $this->db->where('id_misi', $this->input->post('id_misi'));
        $this->db->update('misi', $data);
    }
    public function get_misiid($id_misi)
    {
        return $this->db->get_where('misi', ['id_misi' => $id_misi])->row_array();
    }
    public function hapus_misi($id_misi)
    {
        $this->db->where('id_misi', $id_misi);
        $this->db->delete('misi');
    }
}
