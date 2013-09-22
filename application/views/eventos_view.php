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
	<style>
	.evento .miniatura{
		display: inline-block;
	}

	.slider-mini{
		display: inline-block;
		padding: 15px 5px;
		background: rgba(0,0,0,0.8);
		text-align: center;
	}

	.slider-mini a{
		margin-right: 10px;

	}
	</style>


	<script src="<?= base_url() ?>javascripts/modernizr.foundation.js"></script>
</head>
<body>
	<?php
	$this->load->view("header", $logo);
	?>
	<div class="row contenedor">
		<div class="twelve columns">
			<div class="row">
				<div class="two columns">
					<br>    
					<ul class="nav-bar vertical">
						<?php
						for ($i = 0; $i < count($anosus); $i++) {
							?>
							<li class="has-flyout">
								<a href="#"><?= $anosus[$i] ?></a>
								<a href="#" class="flyout-toggle"><span> </span></a>
								<ul class="flyout">
									<?php
									for ($j = 0; $j < count($eventos[$i]); $j++) {
										?>
										<li>
											<a href="<?= base_url() ?>eventos/evento/<?= $eventos[$i][$j]['id_evento'] ?>" >
												<?= $eventos[$i][$j]['nombre'] ?>
											</a>
										</li>
										<?php
									}
									?>
								</ul>
							</li>
							<?php
						}
						?>
					</ul>
				</div>

				<div class="nine columns offset-by-one evento">
					<h3><?= $evento[0]["nombre"] ?></h3>
					<h5><?= $evento[0]["lugar"] ?></h5>
					<hr>
					<img src="<?=base_url()?>images/eventos/<?=$evento[0]["imagen"] ?>">
					<br><br>
					<?= $evento[0]["descripcion"] ?>
					
					<hr> 	
					<div>
						<h5>Galeria:</h5>
					</div>
					<div class="slider-mini">

					</div>
				</div>

			</div>
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
		$(".evento .miniatura").attr("width","100")
		$('.evento img').wrap(function(){
			return '<a class="fancybox" rel="fancybox-button" href="' + $(this).attr("src") + '"/>'
		});

		$(".slider-mini").prepend( $(".evento .miniatura").parent())

		$(".fancybox").fancybox({
			openEffect  : 'elastic',
			closeEffect : 'easeOutBack'
		});
	})
	</script>

</body>
</html>
