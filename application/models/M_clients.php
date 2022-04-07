<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_clients extends CI_Model
{
    //ambil semua clients
    public function get_clients()
    {
        return $this->db->get('clients')->result_array();
    }

    //ambil clients berdasarkan id
    public function get_clientsid($id_clients)
    {
        return $this->db->get_where('clients', ['id_clients' => $id_clients])->row_array();
    }

    //pagination
    public function p_clients($limit, $start)
    {
        return $this->db->get('clients', $limit, $start)->result_array();
    }
    public function jumlah_clients()
    {
        return $this->db->get('clients')->num_rows();
    }

    //hapus clients
    public function hapus_clients($id_clients)
    {
        $this->db->where('id_clients', $id_clients);
        $this->db->delete('clients');
    }
}
