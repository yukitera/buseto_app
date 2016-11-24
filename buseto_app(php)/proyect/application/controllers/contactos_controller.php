<?php

class contactos_controller extends CI_Controller {

	public function index(){
		$this -> load -> view("plantilla/header");
		$this -> load -> view("contacto/index");
		$this -> load -> view("plantilla/footer");
	}

	public function agregar(){
		echo "Este es agregar";
	}
}

?>