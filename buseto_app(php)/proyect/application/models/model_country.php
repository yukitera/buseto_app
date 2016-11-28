<?php 


class model_country extends CI_Model{

	function insert($data){
		$this -> db -> insert('country',$data);
	}

	function read(){
		$query = $this -> db -> get('country');
		return $query -> result();
	}
}


?>