<?php

if (!defined('BASEPATH'))
	exit('No direct script access allowed');

class Convocatoria extends CI_Controller {

	public function index() {
		$this->load->model("inicio_model");
		$data["logo"]["logo"] = $this->inicio_model->getlogo();
		$data["footer"]["legalfooter"] = $this->inicio_model->legalfooter();
		$data["footer"]["lemonfooter"] = $this->inicio_model->lemonfooter();
		$this->load->view('convocatoria_view', $data);
	}

	private function uploadword(){

		$allowedExts = array(
			"pdf", 
			"doc", 
			"docx"
			); 

		$allowedMimeTypes = array( 
			'application/msword',
			'text/pdf',
			'application/doc',
			'application/pdf',
			'application/vnd.openxmlformats-officedocument.wordprocessingml.document'
			);

		$extension = end(explode(".", $_FILES["file"]["name"]));

		if ($_FILES['file']['error'] !== UPLOAD_ERR_OK) {
			return false;
		}

		if ( 20000 < $_FILES["file"]["size"]  ) {
			return false;
		}

		if ( ! ( in_array($extension, $allowedExts ) ) ) {
			return false;
		}

		if ( in_array( $_FILES["file"]["type"], $allowedMimeTypes )){
			$nombre = md5(time()) . $extension;   
			move_uploaded_file($_FILES["file"]["tmp_name"], "docs/" .$name); 
			return $nombre;
		}
		else{
			return false;
		}
	}

	public function enviar(){

		$this->load->model("inicio_model");
		$data["logo"]["logo"] = $this->inicio_model->getlogo();
		$data["footer"]["legalfooter"] = $this->inicio_model->legalfooter();
		$data["footer"]["lemonfooter"] = $this->inicio_model->lemonfooter();

		$this->load->library('form_validation');
		$this->form_validation->set_rules('sender_name', 'Nombre', 'trim|required|xss_clean');
		$this->form_validation->set_rules('fecha_nacimiento',"Fecha de nacimiento",'trim|required|xss_clean');
		$this->form_validation->set_rules('direccion',"Dirección",'trim|required|xss_clean');
		$this->form_validation->set_rules('telefono',"Teléfono",'trim|required|xss_clean');
		$this->form_validation->set_rules('sender_email', 'Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('curso_opt',"Curso",'trim|required|xss_clean');
		//$this->form_validation->set_rules('file',"Carta",'trim|required|xss_clean');


		if($this->form_validation->run() == FALSE) {
			$this->load->view('convocatoria_view',$data);
		} else {

			$archivo = $this->uploadword();

			if($archivo != false){
				$datos = array(
					"sender_name" => $this->input->post('sender_name'),
					"fecha_nacimiento" =>$this->input->post('fecha_nacimiento'),
					"direccion" => $this->input->post('direccion'),
					"telefono" => $this->input->post("telefono"),
					"sender_email" => $this->input->post('sender_email'),
					"curso_opt" => $this->input->post('curso_opt'),
					"file" => $archivo
					);

				$this->model->load("convocatoria_model");
				$this->convocatoria_model->insertar($datos);

				$data["message"] = false;
			}
			else{
				$data["message"] = TRUE;
			}

			$this->load->view('convocatoria_view',$data);
			
		}
	}

}


