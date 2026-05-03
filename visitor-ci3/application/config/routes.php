<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller']            = 'visitor';
$route['404_override']                  = '';
$route['translate_uri_dashes']          = FALSE;

$route['visitor']['GET']                = 'visitor/index';
$route['visitor']['POST']               = 'visitor/create';
$route['visitor/update/(:num)']['POST'] = 'visitor/update/$1';