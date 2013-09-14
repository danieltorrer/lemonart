<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of inicio_model
 *
 * @author Daniel
 */
class inicio_model extends CI_Model {

	public function get_slides() {
		$query = $this->db->get('slide');
		return $query->result_array();
	}
	
	public function getlogo(){
		$query = $this->db->get('logo');
		return $query->result_array();
	}
	
	/////////////////////////////////////////////////////////////////////////////////////////////////
	public function artistasd(){
		$query = $this->db->get_where('descripcion', array('clave' => "artistadestacado"));
		return $query->result_array();
	}
	
	public function eventosd(){
		$query = $this->db->get_where('descripcion', array('clave' => "eventodestacado"));
		return $query->result_array();
	}
	
	public function colaboradoresd(){
		$query = $this->db->get_where('descripcion', array('clave' => "colaboradordestacado"));
		return $query->result_array();
	}
	
	/////////////////////////////////////////////////////////////////////////////////////////////////
	public function destacadosartistas(){
		$this->db->order_by("id_destacado", "desc");
		$query = $this->db->get('artistasdestacados', 3);
		return $query->result_array();
	}
	
	public function destacadoseventos(){
		$this->db->order_by("id_destacado", "desc");
		$query = $this->db->get('eventosdestacados', 3);
		return $query->result_array();
	}
	
	public function destacadoscolaboradores(){
		$this->db->order_by("id_destacado", "desc");
		$query = $this->db->get('colaboradoresdestacados', 3);
		return $query->result_array();
	}
        
        ////////////////////////////////////////////////////////////////////////
        public function lemonfooter(){
            $query = $this->db->get_where("descripcion", array("clave" => "lemonfooter"));
            return $query->result_array();
        }
        
        public function legalfooter(){
            $query = $this->db->get_where("descripcion", array("clave" => "legalfooter"));
            return $query->result_array();
        }
        
        
		public function lemonprincipal(){
			$query = $this->db->get_where("descripcion", array("clave" => "lemonprincipal"));
			return $query->result_array();
		}


		public function insertar_imagen($data){
			$this->db->insert('imagenes', $data); 
		}

		public function get_imagenes(){
			$this->db->order_by("id_imagen", "desc");
			$query = $this->db->get('imagenes');
			return $query->result_array();
		}

//put your code here
}

?>
