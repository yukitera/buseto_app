<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class home extends CI_Controller {
	public function index()
	{
		$this -> load -> view("plantilla/header");
		$this -> load -> view("home/index");
		$this -> load -> view("plantilla/footer");
	}
}
