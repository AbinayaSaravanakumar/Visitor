<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Visitor_model extends CI_Model
{
    protected $table = 'visitors';

    public function __construct()
    {
        parent::__construct();
    }

    public function get_all()
    {
        return $this->db->get($this->table)->result();
    }

    public function create_visitor($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function update_visitor($id, $data)
    {
        $this->db->where('id', $id);
        return $this->db->update($this->table, $data);
    }
}