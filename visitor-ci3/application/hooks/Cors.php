<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cors
{
    public function set_cors_headers()
    {
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With");
        header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");

        if (strtolower($_SERVER['REQUEST_METHOD']) === 'options') {
            http_response_code(200);
            exit();
        }
    }
}