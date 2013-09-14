<!DOCTYPE html>

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <!-- Set the viewport width to device width for mobile -->
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width"/>
    <link rel="shortcut icon" href="<?=base_url()?>images/favicon.ico">

    <title>Lemon Art</title>

    <!-- Included CSS Files (Compressed) -->
    <link rel="stylesheet" href="<?= base_url() ?>stylesheets/social_foundicons.css">
    <link rel="stylesheet" href="<?= base_url() ?>stylesheets/social_foundicons_ie7.css">
    <link rel="stylesheet" href="<?= base_url() ?>stylesheets/foundation.css">
    <link rel="stylesheet" href="<?= base_url() ?>stylesheets/app.css">
    <style>

    </style>


    <script src="<?= base_url() ?>javascripts/modernizr.foundation.js"></script>
</head>
<body>
  <?php
  $this->load->view("header", $logo);
  ?>
  <div class="row contenedor">
    <div class="twelve columns">

            <?php
            echo form_open('contacto/enviar') . "<br />"; 
            ?>
            <fieldset>
                
                <?php
                    if(isset($message)){
                        if($message){
                            ?>
                            <h5>Hemos recibido tu mensaje, pronto recibiras una respuesta. </h5>
                            <?php
                        }
                        else{
                            ?>
                            <h5>Ocurrio un error al enviar tu mensaje, intentalo mas tarde</h5>
                            <?php
                        }
                    }
                ?>
                <legend>Contactanos</legend>
                <?php echo validation_errors(); ?>
                <label>Nombre</label>
                <input type="text" placeholder="Nombre" id="sender_name" name="sender_name"/>

                <label>Correo</label>
                <input type="text" placeholder="ej. direccion@dominio.com" id="sender_email" name="sender_email"/>

                <label>Mensaje</label>
                <textarea placeholder="Mensaje" rows="10" name="content" id="content"></textarea>
                <input type="submit" class="large button right" value="Enviar">

            </fieldset>
            <?php
            echo form_close();
            ?>
        </div>
    </div>

    <?php
    $this->load->view("footer", $footer);
    ?>

    <!-- Included JS Files (Compressed) -->
    <script src="<?= base_url() ?>javascripts/jquery.js"></script>
    <script src="<?= base_url() ?>javascripts/foundation.min.js"></script>
    <!-- Initialize JS Plugins -->
    <script src="<?= base_url() ?>javascripts/app.js"></script>
    <script src="<?= base_url() ?>javascripts/main.js"></script>
</body>
</html>
