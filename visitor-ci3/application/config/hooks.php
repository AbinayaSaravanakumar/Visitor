<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$hook['pre_controller'] = array(
    'class'    => 'Cors',
    'function' => 'set_cors_headers',
    'filename' => 'Cors.php',
    'filepath' => 'hooks',
    'params'   => array()
);