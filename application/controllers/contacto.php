<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Contacto extends CI_Controller {

    public function index() {
        $this->load->model("inicio_model");
        $data["logo"]["logo"] = $this->inicio_model->getlogo();
        $data["footer"]["legalfooter"] = $this->inicio_model->legalfooter();
        $data["footer"]["lemonfooter"] = $this->inicio_model->lemonfooter();
        $this->load->view('contacto_view', $data);
    }

    public function enviar(){

        $this->load->model("inicio_model");
        $data["logo"]["logo"] = $this->inicio_model->getlogo();
        $data["footer"]["legalfooter"] = $this->inicio_model->legalfooter();
        $data["footer"]["lemonfooter"] = $this->inicio_model->lemonfooter();

        $this->load->library('form_validation');
        $this->form_validation->set_rules('sender_name', 'Nombre', 'trim|required');
        $this->form_validation->set_rules('sender_email', 'Email', 'trim|required|valid_email');
        $this->form_validation->set_rules('content', 'Contenido', 'trim|required|xss_clean');



        if($this->form_validation->run() == FALSE) {
            $this->load->view('contacto_view',$data);
        } else {



            /************************************************************/
            $this->load->library('My_PHPMailer');

            $mail = new PHPMailer();
            $mail->IsSMTP(); // establecemos que utilizaremos SMTP
            $mail->SMTPAuth   = true; // habilitamos la autenticación SMTP
            $mail->SMTPSecure = "ssl";  // establecemos el prefijo del protocolo seguro de comunicación con el servidor
            $mail->Host       = "smtp.gmail.com";      // establecemos GMail como nuestro servidor SMTP
            $mail->Port       = 465;                   // establecemos el puerto SMTP en el servidor de GMail
            $mail->Username   = "lemonart.tj@gmail.com";  // la cuenta de correo GMail
            $mail->Password   = "Lemonlemon";            // password de la cuenta GMail
            $mail->SetFrom($this->input->post('sender_email'), $this->input->post('sender_name'));  //Quien envía el correo
            $mail->AddReplyTo("contacto@lemonart-tj.com","Nombre Apellido");  //A quien debe ir dirigida la respuesta
            $mail->Subject    = "Contacto";  //Asunto del mensaje
            $mail->Body      =  $this->security->xss_clean($this->input->post("content"));
            $mail->AltBody    = "";
            $destino = "contacto@lemonart-tj.com";
            $mail->AddAddress($destino, "Juan Palotes");

            //$mail->AddAttachment("images/phpmailer.gif");      // añadimos archivos adjuntos si es necesario
            //$mail->AddAttachment("images/phpmailer_mini.gif"); // tantos como queramos

            if(!$mail->Send()) {
                $data["message"] = FALSE;
            } else {
                $data["message"] = TRUE;
            }
                
            //var_dump($data);
            $this->load->view('contacto_view',$data);

            //$this->load->library('email');
            //$this->email->from($this->input->post('sender_email'), $this->input->post('sender_name'));
                //$this->email->to('info.lemonart@gmail.com');
            
        }
    }

}