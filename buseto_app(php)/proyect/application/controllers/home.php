<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class home extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this -> load -> model('model_country');
	}

	public function index()
	{
		$this -> load -> view("plantilla/header");
		$this -> load -> view("home/index");
		$this -> load -> view("plantilla/form");
		$this -> load -> view("plantilla/footer");
	}

	public function insertCountry()
	{
		$data = array(
			'country_name' => $this -> input -> POST('name'),
			'country_flag' => $this -> input -> POST('flag')
		);
		
		$this -> model_country ->  insert($data);
	}
	
}
