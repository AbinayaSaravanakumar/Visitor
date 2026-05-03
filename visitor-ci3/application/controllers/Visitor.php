<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Visitor extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Visitor_model');
        $this->load->database();
    }

    public function index()
    {
        $data = $this->Visitor_model->get_all();
        $this->output
            ->set_status_header(200)
            ->set_content_type('application/json')
            ->set_output(json_encode($data));
    }

public function create()
{
    $json = json_decode(file_get_contents('php://input'), true);

    $data = [
        'name'     => $json['name']     ?? $this->input->post('name'),
        'phone'    => $json['phone']    ?? $this->input->post('phone'),
        'purpose'  => $json['purpose']  ?? $this->input->post('purpose'),
        'meet'     => $json['meet']     ?? $this->input->post('meet'),
        'location' => $json['location'] ?? $this->input->post('location'),  
        'company'  => $json['company']  ?? $this->input->post('company'),   
        'in_time'  => date('Y-m-d H:i:s')
    ];

    $this->Visitor_model->create_visitor($data);
    $inserted_id = $this->db->insert_id();

    $this->output
        ->set_status_header(201)
        ->set_content_type('application/json')
        ->set_output(json_encode([
            'status' => 'success',
            'id'     => $inserted_id
        ]));
}

    public function update($id = null)
    {
         $json = json_decode(file_get_contents('php://input'), true);

        $data = [
            'out_time' => $json['out_time'] ?? date('Y-m-d H:i:s')
        ];

        $this->Visitor_model->update_visitor($id, $data);

        $this->output
            ->set_status_header(200)
            ->set_content_type('application/json')
            ->set_output(json_encode(['status' => 'updated']));
    }
}