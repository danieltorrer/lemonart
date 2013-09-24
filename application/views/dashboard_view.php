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
	<link rel="stylesheet" href="<?=base_url()?>source/jquery.fancybox.css">
	<style type="text/css">
	#cke_62{
		display: none;
	}
	</style>
	<script src="<?= base_url() ?>javascripts/modernizr.foundation.js"></script>

</head>
<body>
	<?php
	$this->load->view("header", $logo);
	?>

	<?php
		//phpinfo();
	?>

	<div class="contenedor">

		<div class="row">
			<div class="two columns">
				<ul class="nav-bar vertical">
					<li class="has-flyout">
						<a href="#">Inicio</a>
						<a href="#" class="flyout-toggle"><span></span></a>
						<ul class="flyout">
							<li><a href="<?php echo base_url() . 'back/logo_panel' ?>" >Logo</a></li>
							<li><a href="<?php echo base_url() . 'back/slides_panel' ?>">Slides</a></li>
							<li><a href="<?php echo base_url() . 'back/descripcion_panel' ?>">Descripciones</a></li>
						</ul>
					</li>

					<!--<li class="has-flyout">
						<a href="#">Destacados</a>
						<a href="#" class="flyout-toggle"><span> </span></a>
						<ul class="flyout">
							<li><a href="<?php echo base_url() . 'back/artistasdestacados_panel' ?>">Artistas</a></li>
							<li><a href="<?php echo base_url() . 'back/eventosdestacados_panel' ?>">Eventos</a></li>
							<li><a href="<?php echo base_url() . 'back/colaboradoresdestacados_panel' ?>">Colaboradores</a></li>
						</ul>
					</li>-->

					<li>
						<a href="<?php echo base_url() . 'back/artistas_panel' ?>">Artistas</a>
					</li>

					<li>
						<a href="<?php echo base_url() . 'back/obras_panel' ?>">Obras</a>
					</li>

					<li>
						<a href="<?php echo base_url() . 'back/eventos_panel' ?>">Eventos</a>
					</li>

					<li>
						<a href="<?php echo base_url() . 'back/colaboradores_panel' ?>">Colaboradores</a>
					</li>

					<li>
						<a href="<?php echo base_url() . 'back/blog_panel' ?>">Blog</a>
					</li>

					<li class="has-flyout">
						<a href="">Nosotros</a>
						<a href="" class="flyout-toogle"><span> </span></a>
						<ul class="flyout">
							<li><a href="<?php echo base_url() . 'back/sobre_panel' ?>">Sobre Lemon art</a></li>
							<li><a href="<?php echo base_url() . 'back/integrantes_panel' ?>">Integrantes</a></li>
						</ul>
					</li>
					<li>
						<a href="<?php echo base_url() . 'back/imagenes_panel' ?>">Imagenes</a>
					</li>
				</ul>
			</div>


			<div class="ten columns iframe-cont">

				<?php 
				if(!$panel["imagen"]){
					?>
					<div>

						<h3><?=$panel["titulo"]?></h3>
						<p><?=$panel["descripcion"]?></p>
						<IFRAME class="framegc" src="<?php echo base_url('back/' . $panel["nombre"]); ?>" class="twelve" height="<?= $panel["size"] ?>"></IFRAME>
					</div>
					
					<?php
				}
				else{
					?>
					<div>
						<h2>Imagenes</h2>
						<h4>Modulo para subir imagenes</h4>
						<br>
						<form action="<?= base_url() ?>back/subirimagen" class="form-horizontal" method="post" name="imagenform" id="imagenform" enctype="multipart/form-data"> 
							<div class="row">
								<input type="file" name="files[]" id="file" multiple="multiple"/>
							</div>
							<br>
							<div class="row">
								<input type="submit" class="button" value="Subir"/>
								<?php echo form_hidden($this->security->get_csrf_token_name(), $this->security->get_csrf_hash()); ?>
							</div>
						</form>
						
						<br>
						<hr>
						<br><br>
						<h4>Imagenes de la biblioteca</h4>
						<ul>	
							
							<?php
							$cont = 1;
							foreach ($panel["imagenes"] as $imagen) {
								?>
								<li>
									<div class="row">
										<div class="nine columns">
											<input type="text" name="" value="<?=base_url() . "images/" . $imagen['imagen'] ?>">
										</div>
										<div class="three columns">
											
											<a class="fancybox" rel="fancybox-button" href="<?php echo base_url() . "images/" . $imagen['imagen'] ?>">
												<img src="<?php echo base_url() . "images/" . $imagen['thumb'] ?>" width="70">
											</a>
											<a><?php echo $cont; ?></a>
											<img class="erasepic" src="<?php echo base_url() . 'images/remove2.png' ?>" data-img="<?php echo $imagen['imagen'] ?>">
											
										</div>
									</div>
								</li>
								<hr>
								<?php
								$cont++;
							}
							?>
							<?php echo form_open('back/borrarimg', array('id' => 'myform')); ?>
							<input type="hidden" id="nombre" name="nombre" value="algo" >
							<input type="submit" name="borra" id="borra" style="display:none;">
							<?php echo form_close();?>
						</ul>
					</div>

					<?php
				}
				?>
			</div>
		</div>



		<?php
		$this->load->view("footer", $footer);
		?>

		<!-- Included JS Files (Compressed) -->
		<script src="<?= base_url() ?>javascripts/jquery.js"></script>
		<script src="<?= base_url() ?>javascripts/foundation.min.js"></script>
		<script src="<?=base_url()?>source/jquery.fancybox.pack.js"></script>
		<!-- Initialize JS Plugins -->
		<script src="<?= base_url() ?>javascripts/app.js"></script>
		<script src="<?= base_url() ?>javascripts/main.js"></script>

		<script>
		$(document).ready(function(){

			$('.logoframe').load(function() {
				this.stylesheetse.height = this.contentWindow.document.body.offsetHeight + 'px';
			});

			$(".erasepic").click(function(){
				$("#nombre").val ( $(this).attr("data-img") )
				$("#myform").submit()
			})

			$(".fancybox").fancybox({
				openEffect  : 'elastic',
				closeEffect : 'easeOutBack'
			});


		})
		</script>
	</body>
	</html>
