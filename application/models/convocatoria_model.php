<?php

class convocatoria_model extends CI_Model {
	function insertar($datos){
		$this->db->insert('convocatoria', $datos);
	}
}

?>