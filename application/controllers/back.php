<?php

if (!defined('BASEPATH'))
	exit('No direct script access allowed');

class Back extends CI_Controller {

	public function index() {
		if ($this->isValidated()) {
			redirect("back/dashboard");
		} else {
			$data = $this->descripciones();

			$this->load->view("login_view", $data);
		}
	}

	public function dashboard() {
		if ($this->isValidated()) {

			$data = $this->descripciones();

			$data["panel"]["nombre"] = "logo";
			$data["panel"]["size"] = "218";
			$data["panel"]["descripcion"] = "Panel de contenidos";
			$data["panel"]["titulo"] = "Panel";
			$data["panel"]["imagen"] = FALSE;
			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function logo_panel() {
		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "logo";
			$data["panel"]["size"] = "218";
			$data["panel"]["descripcion"] = "Cambia el logo de Lemon Art";
			$data["panel"]["titulo"] = "Logo";
			$data["panel"]["imagen"] = FALSE;
			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function slides_panel() {
		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "slide";
			$data["panel"]["size"] = "700";
			$data["panel"]["titulo"] = "Slide";
			$data["panel"]["imagen"] = FALSE;
			$data["panel"]["descripcion"] = "Configuracion del carrusel de la pantalla principal (slide).";

			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function descripcion_panel() {

		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "descripcion";
			$data["panel"]["descripcion"] = "Cambiar el texto que aparece en la parte de hasta abajo (footer) y los que aparecen en la pagina principal";
			$data["panel"]["titulo"] = "Descripciones";
			$data["panel"]["size"] = "600";
			$data["panel"]["imagen"] = FALSE;

			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function artistasdestacados_panel() {
		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "artistasdestacados";
			$data["panel"]["size"] = "300";
			$data["panel"]["descripcion"] = "Artistas que apareceran en la pagina principal. Max 3";
			$data["panel"]["titulo"] = "Artistas destacados";
			$data["panel"]["imagen"] = FALSE;

			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function eventosdestacados_panel() {

		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "eventosdestacados";
			$data["panel"]["size"] = "300";
			$data["panel"]["imagen"] = FALSE;
			$data["panel"]["titulo"] = "Eventos destacados";
			$data["panel"]["descripcion"] = "Eventos que apareceran en la pagina principal. Max 3";

			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function colaboradoresdestacados_panel() {

		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "colaboradoresdestacados";
			$data["panel"]["size"] = "300";
			$data["panel"]["imagen"] = FALSE;
			$data["panel"]["descripcion"] = "Colaboradores que apareceran en la pagina principal.Max 3";
			$data["panel"]["titulo"] = "Colaboradores destacados";

			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function artistas_panel() {
		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "artistas";
			$data["panel"]["size"] = "800";
			$data["panel"]["imagen"] = FALSE;
			$data["panel"]["descripcion"] = "Agregar/editar/modificar artistas";
			$data["panel"]["titulo"] = "Artistas";

			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function obras_panel() {

		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "obras";
			$data["panel"]["size"] = "1200";
			$data["panel"]["imagen"] = FALSE;
			$data["panel"]["descripcion"] = "Agregar/editar/modificar obras";
			$data["panel"]["titulo"] = "Obras";


			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function eventos_panel() {
		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "eventos";
			$data["panel"]["size"] = "900";
			$data["panel"]["imagen"] = FALSE;
			$data["panel"]["descripcion"] = "Agregar/editar/modificar eventos";
			$data["panel"]["titulo"] = "Eventos";

			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function colaboradores_panel() {
		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "colaboradores";
			$data["panel"]["size"] = "900";
			$data["panel"]["imagen"] = FALSE;
			$data["panel"]["descripcion"] = "Agregar/editar/modificar colaboradores";
			$data["panel"]["titulo"] = "Colaboradores";

			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function blog_panel() {
		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "blog";
			$data["panel"]["size"] = "900";
			$data["panel"]["imagen"] = FALSE;
			$data["panel"]["descripcion"] = "Agregar/editar/modificar entradas del blog";
			$data["panel"]["titulo"] = "Blog";

			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function sobre_panel() {
		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "nosotros";
			$data["panel"]["size"] = "850";
			$data["panel"]["imagen"] = FALSE;
			$data["panel"]["descripcion"] = "Acerca de Lemon Art";
			$data["panel"]["titulo"] = "Acerca de";

			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function integrantes_panel() {
		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "integrantes";
			$data["panel"]["size"] = "800";
			$data["panel"]["imagen"] = FALSE;
			$data["panel"]["descripcion"] = "Agregar/editar/modificar integrantes de lemon art";
			$data["panel"]["titulo"] = "Integrantes";

			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function imagenes_panel(){
		if ($this->isValidated()) {

			$data = $this->descripciones();
			$data["panel"]["nombre"] = "imagenes";
			$data["panel"]["size"] = "600";
			$data["panel"]["imagen"] = true;
			$data["panel"]["descripcion"] = "";

			$data["panel"]["imagenes"] = $this->inicio_model->get_imagenes();
			

			$this->load->view("dashboard_view", $data);
		} else {
			redirect("back/index");
		}
	}

	public function logo() {
		if ($this->isValidated()) {

			$crud = new grocery_CRUD();

			$crud->set_table('logo')
			->set_subject('Logo')
			->columns('logo');

			$crud->edit_fields('logo');

			$crud->unset_add();
			$crud->unset_delete();
			$crud->set_field_upload('logo', 'images/logo');
			//$crud->callback_after_upload(array($this, 'logo_callback'));

			$output = $crud->render();

			//$this->_example_output($output);

			$this->load->view("grid_view", $output);
		} else {
			redirect("back/index");
		}
	}

	public function descripcion() {
		if ($this->isValidated()) {

			$crud = new grocery_CRUD();

			$crud->set_table('descripcion')
			->set_subject('Descripcion')
			->columns('texto', 'posicion');

			$crud->edit_fields('texto');

			$crud->unset_add();
			$crud->unset_delete();

			$output = $crud->render();

			//$this->_example_output($output);

			$this->load->view("grid_view", $output);
		} else {
			redirect("back/index");
		}
	}

	public function artistasdestacados() {
		if ($this->isValidated()) {

			$crud = new grocery_CRUD();

			$crud->set_table('artistasdestacados')
			->set_subject('Artistas destacados')
			->columns('id_artista')
			->display_as('id_artista', 'Nombre artista');

			$crud->set_relation("id_artista", "artista", "nombre");
			$crud->required_fields('id_artista');
			/* $crud->unset_add();
			$crud->unset_delete(); */

			$output = $crud->render();

			//$this->_example_output($output);

			$this->load->view("grid_view", $output);
		}
		else
			redirect("back/index");
	}

	public function eventosdestacados() {
		
		if ($this->isValidated()) {

			$crud = new grocery_CRUD();

			$crud->set_table('eventosdestacados')
			->set_subject('Eventos destacados')
			->columns('id_evento')
			->display_as('id_evento', 'Nombre evento');

			$crud->set_relation("id_evento", "evento", "nombre");
			$crud->required_fields('id_evento');
			/* 
			$crud->unset_add();
			$crud->unset_delete();
			*/
			$output = $crud->render();

			//$this->_example_output($output);

			$this->load->view("grid_view", $output);
		}

		else
			redirect("back/index");
	}

	public function colaboradoresdestacados() {
		if ($this->isValidated()) {

			$crud = new grocery_CRUD();

			$crud->set_table('colaboradoresdestacados')
			->set_subject('Colaboradores destacados')
			->columns('id_colaborador')
			->display_as('id_colaborador', 'Nombre colaborador');

			$crud->set_relation("id_colaborador", "colaborador", "nombre");
			$crud->required_fields('id_colaborador');
			/* $crud->unset_add();
			$crud->unset_delete(); */

			$output = $crud->render();

			//$this->_example_output($output);

			$this->load->view("grid_view", $output);
		}
		else
			redirect("back/index");
	}

	public function slide() {
		if ($this->isValidated()) {

			$crud = new grocery_CRUD();

			$this->load->config('grocery_crud');
			$this->config->set_item('grocery_crud_file_upload_allow_file_types', 'gif|jpeg|jpg|png');

			$crud->set_table('slide');
			$crud->set_field_upload('imagen', 'images/slide');

			$crud->callback_after_upload(array($this, 'slide_callback'));
			$output = $crud->render();

			$this->load->view("grid_view", $output);
		}

		else
			redirect("back/index");
	}

	function slide_callback($uploader_response, $field_info, $files_to_upload) {
		$this->load->library('image_moo');

		$file_uploaded = $field_info->upload_path . '/' . $uploader_response[0]->name;
		//$this->image_moo->load($file_uploaded)->set_background_colour("#000")->resize(940,403, TRUE)->save($file_uploaded, true);
		$this->image_moo->load($file_uploaded)->resize_crop(910, 425)->save($file_uploaded, true);

		return true;
	}

	public function artistas() {
		if ($this->isValidated()) {

			$crud = new grocery_CRUD();

			$this->load->config('grocery_crud');
			$this->config->set_item('grocery_crud_file_upload_allow_file_types', 'gif|jpeg|jpg|png');

			$crud->set_table('artista')
			->set_subject('Artista')
			->columns('nombre', "imagen", 'biografia')
			->display_as('nombre', 'Nombre')
			->display_as("imagen", "Imagen")
			->display_as('biografia', 'Biografía');

			$crud->fields('nombre', "imagen", 'biografia');
			$crud->required_fields('nombre', 'biografia');
			$crud->set_field_upload('imagen', 'images/artistas');

			$crud->callback_after_upload(array($this, 'artistas_callback'));

			$output = $crud->render();

			$this->load->view("grid_view", $output);
		}

		else
			redirect("back/index");
	}

	function artistas_callback($uploader_response, $field_info, $files_to_upload) {
		$this->load->library('image_moo');

		$file_uploaded = $field_info->upload_path . '/' . $uploader_response[0]->name;
		$this->image_moo->load($file_uploaded)->resize_crop(205, 205)->save($file_uploaded, true);

		return true;
	}

	public function obras() {
		if ($this->isValidated()) {

			$crud = new grocery_CRUD();

			$this->load->config('grocery_crud');
			$this->config->set_item('grocery_crud_file_upload_allow_file_types', 'gif|jpeg|jpg|png');

			$crud->set_table('obra')
			->set_subject('Obra')
			->columns('titulo', "descripcion", 'imagen', "id_artista")
			->display_as('nombre', 'Nombre')
			->display_as('descripcion', 'Descripción de la obra')
			->display_as("imagen", "Imagen")
			->display_as("id_artista", "Artista");
			//->display_as("en_venta", "En venta")
			//->display_as("precio", "Precio");

			$crud->set_relation("id_artista", "artista", "nombre");
			//$crud->fields('titulo', "descripcion", 'imagen',"id_Artista","en_venta","precio");
			//$crud->required_fields('titulo', "descripcion", 'imagen', "id_artista", "en_venta", "precio");
			$crud->required_fields('titulo', "descripcion", 'imagen', "id_artista");
			$crud->set_field_upload('imagen', 'images/obras');
			$crud->callback_after_upload(array($this, 'obras_callback'));

			$output = $crud->render();

			$this->load->view("grid_view", $output);
		}

		else
			redirect("back/index");
	}

	function obras_callback($uploader_response, $field_info, $files_to_upload) {
		$this->load->library('image_moo');

		$file_uploaded = $field_info->upload_path . '/' . $uploader_response[0]->name;
		$file_uploaded2 = $field_info->upload_path . '/miniatura/' . $uploader_response[0]->name;
		$this->image_moo->load($file_uploaded)->resize_crop(518, 518)->save($file_uploaded, true);
		$this->image_moo->load($file_uploaded)->resize_crop(146, 146)->save($file_uploaded2, true);

		return true;
	}

	public function colaboradores() {
		if ($this->isValidated()) {

			$crud = new grocery_CRUD();

			$this->load->config('grocery_crud');
			$this->config->set_item('grocery_crud_file_upload_allow_file_types', 'gif|jpeg|jpg|png');

			$crud->set_table('colaborador')
			->set_subject('Colaborador')
			->columns('nombre', "logo", 'descripcion')
			->display_as('nombre', 'Nombre')
			->display_as("logo", "Logo")
			->display_as('descripcion', 'Descripcion');


			//$crud->fields('nombre', "imagen", 'biografia');
			$crud->required_fields('nombre', 'logo', "descripcion");
			$crud->set_field_upload('logo', 'images/colaboradores');
			//$crud->callback_after_upload(array($this, 'colaboradores_callback'));

			$output = $crud->render();

			//$this->_example_output($output);

			$this->load->view("grid_view", $output);
		}

		else
			redirect("back/index");
	}

	function colaboradores_callback($uploader_response, $field_info, $files_to_upload) {
		$this->load->library('image_moo');

		$file_uploaded = $field_info->upload_path . '/' . $uploader_response[0]->name;
		$file_uploaded2 = $field_info->upload_path . '/small/' . $uploader_response[0]->name;
		$this->image_moo->load($file_uploaded)->save($file_uploaded, true);
		$this->image_moo->load($file_uploaded)->save($file_uploaded2, true);

		return true;
	}

	public function eventos() {
		if ($this->isValidated()) {

			$crud = new grocery_CRUD();

			$crud->set_table('evento')
			->set_subject('Evento')
			->columns('nombre', "lugar", 'anio', "descripcion","imagen")
			->display_as('nombre', 'Nombre')
			->display_as("lugar", "Lugar")
			->display_as('anio', 'Año')
			->display_as('descripcion', 'Descripción');

			$crud->set_relation("anio", "anio", "anio");

			$crud->required_fields('nombre', "lugar", 'anio', "descripcion");
			$crud->set_field_upload('imagen', 'images/eventos');


			$output = $crud->render();

			//$this->_example_output($output);

			$this->load->view("grid_view", $output);
		}

		else
			redirect("back/index");
	}

	function eventos_callback(){
		$file_uploaded = $field_info->upload_path . '/' . $uploader_response[0]->name;
		$this->image_moo->load($file_uploaded)->resize_crop(146, 146)->save($file_uploaded, true);
	}

	public function blog() {
		if ($this->isValidated()) {

			$crud = new grocery_CRUD();

			$crud->set_table('blog')
			->set_subject('Entrada');
			$output = $crud->render();

			//$this->_example_output($output);

			$this->load->view("grid_view", $output);
		}
		else
			redirect("back/index");
	}

	public function nosotros() {
		if ($this->isValidated()) {

			$crud = new grocery_CRUD();

			$crud->set_table('nosotros')
			->set_subject('Nosotros')
			->columns('nombre', 'descripcion');

			$crud->edit_fields('descripcion');

			$crud->unset_add();
			$crud->unset_delete();

			$output = $crud->render();

			//$this->_example_output($output);

			$this->load->view("grid_view", $output);
		}
		else
			redirect("back/index");
	}

	public function integrantes() {
		if ($this->isValidated()) {

			$crud = new grocery_CRUD();

			$crud->set_table('integrantes')
			->set_subject('Integrantes');

			$output = $crud->render();

			//$this->_example_output($output);

			$this->load->view("grid_view", $output);
		}
		else
			redirect("back/index");
	}

	/*public function subirimagen() {

		if ($this->isValidated()) {
			$allowedExts = array("jpg", "jpeg", "gif", "png", "JPG", "JPEG", "GIF", "PNG");

			foreach ( $_FILES['file']['tmp_name'] as $key => $val ) {

				$extension = end(explode(".", $_FILES['file']['name'][$key] ) );
				
				if ((($_FILES["file"]["type"] == "image/gif")
					|| ($_FILES["file"]["type"][$key] == "image/jpg")
					|| ($_FILES["file"]["type"][$key] == "image/jpeg")
					|| ($_FILES["file"]["type"][$key] == "image/png")
					|| ($_FILES["file"]["type"][$key] == "image/pjpeg"))
					&& ($_FILES["file"]["size"][$key] < 2000000)
					&& in_array($extension, $allowedExts)) {
					
					if ($_FILES["file"]["error"] > 0) {
						echo "Return Code: " . $_FILES["file"]["error"] . "<br />";
					//return false;
					}
					else {
						$nombrea = md5(time());
						move_uploaded_file($_FILES["file"]["tmp_name"][$key], "images/" . $nombrea . "." . $extension);
					//echo "Stored in: " . base_url() . "images/" . $nombrea . "." . $extension;

						$data = array(
							'imagen' => $nombrea . "." . $extension
							);
						$this->load->model("inicio_model");
						$this->inicio_model->insertar_imagen($data);
						redirect("back/imagenes_panel");
					}

				}

				else {
					$data['error'] = "Archivo Inválido";
					redirect("back/imagenes_panel");
				}

			}

		}

		else
			redirect("back/index");
		}*/

		function subirimagen(){

			if ($this->isValidated()) {
				
				if(isset($_FILES['files'])){
					$allowedExts = array("jpg", "jpeg", "gif", "png", "JPG", "JPEG", "GIF", "PNG");
					$errors= array();
					foreach($_FILES['files']['tmp_name'] as $key => $tmp_name ){
						
						$extension = end(explode(".", $_FILES['files']['name'][$key] ) );

						if ((($_FILES["files"]["type"] == "image/gif")
							|| ($_FILES["files"]["type"][$key] == "image/jpg")
							|| ($_FILES["files"]["type"][$key] == "image/jpeg")
							|| ($_FILES["files"]["type"][$key] == "image/png")
							|| ($_FILES["files"]["type"][$key] == "image/pjpeg"))
							&& ($_FILES["files"]["size"][$key] < 20000000)
							&& in_array($extension, $allowedExts)) {

								$file_name = $_FILES['files']['name'][$key];
								$file_size = $_FILES['files']['size'][$key];
								$file_tmp  = $_FILES['files']['tmp_name'][$key];
								$file_type = $_FILES['files']['type'][$key];

								$extension = end(explode(".", $file_name ));
								

								if($file_size > 20097152){
									$errors[]='File size must be less than 2 MB';
								}

								if(empty($errors)==true){
									$name = "";
									
									$name = md5(time() + $file_name + rand());

									$data = array(
										'imagen' => $name . "." . $extension,
										"thumb" => $name . "_small." . $extension
									);

									$this->load->model("inicio_model");

									$this->inicio_model->insertar_imagen($data);
									$this->load->library('image_moo');

									move_uploaded_file($file_tmp, "images/" . $name . "." . $extension);

									$this->image_moo->load("images/" . $name . "." . $extension)->resize(150,150,TRUE)->save_pa($prepend="", $append="_small", $overwrite=FALSE);
									
									//redirect("back/imagenes_panel");
								}
						}

						else{
							redirect("back");
						}
					}

					if(empty($error)){
						redirect("back/imagenes_panel");
					}
				}
			}

			else
				redirect("back/index");
	}

	function borrarimg(){
		if ($this->isValidated()) {
			$nombre = $this->security->xss_clean($this->input->post("nombre"));
			unlink(PUBPATH . "images/" . 	$nombre);
			$this->db->delete("imagenes",array("imagen" => $nombre));
			redirect("back/imagenes_panel");
		}
		else
			redirect("back/index");
	}

	public function isValidated() {
		return isset($this->session->userdata['id']);
	}

	public function descripciones() {

		$this->load->model("inicio_model");

		$data["logo"]["logo"] = $this->inicio_model->getlogo();
		$data["lemonprincipal"] = $this->inicio_model->lemonprincipal();
		$data["footer"]["legalfooter"] = $this->inicio_model->legalfooter();
		$data["footer"]["lemonfooter"] = $this->inicio_model->lemonfooter();

		return $data;
	}

	public function login() {
		$this->load->model("login_model");

		$this->form_validation->set_rules('usuario', 'usuario', 'required');
		$this->form_validation->set_rules('pass', 'contraseña', 'required');

		if ($this->form_validation->run() == FALSE) {
			$this->load->view('login_view');
		} else {
			$consulta = $this->login_model->validarlogin(
				($this->security->xss_clean($this->input->post('usuario'))), sha1($this->security->xss_clean($this->input->post('pass')))
				);

			if ($consulta) {
				$sesion_data = array(
					'id' => $consulta[0]['id_usuario'],
					"nombre" => $consulta[0]["nombre"]
					);

				$this->session->set_userdata($sesion_data);
				redirect("back/dashboard");
			} else {

				redirect("back/index");
			}
		}
	}

}
?>