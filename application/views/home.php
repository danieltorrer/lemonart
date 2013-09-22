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
	<link rel="stylesheet" href="<?php base_url() ?>stylesheets/social_foundicons.css">
	<link rel="stylesheet" href="<?php base_url() ?>stylesheets/social_foundicons_ie7.css">
	<link rel="stylesheet" href="<?php base_url() ?>stylesheets/foundation.css">
	<link rel="stylesheet" href="<?php base_url() ?>stylesheets/app.css">

	<script src="javascripts/modernizr.foundation.js"></script>
</head>
<body>
	<?php
	$this->load->view("header", $logo);
	?>
	<div class="home-container">
		<section>
			<div class="row">
				<div class="twelve columns">
					<h5 id="descripcion-lemon"><?= $lemonprincipal[0]["texto"] ?></h5>
					<hr>
				</div>
			</div>
			
			<div class="row slider">
				<div class="twelve columns">
					<!--<h3>Novedades</h3>-->

					<div id="featured">
						<?php
						$cont = 1;
						foreach ($slides as $slide) {
							?>
							<div data-caption="#caption<?= $cont ?>">
								<a href="<?= $slide["enlace"] ?>" target="_blank">
									<img src="<?= base_url() ?>images/slide/<?= $slide["imagen"] ?>" alt="slide image">
								</a>
							</div>

							<?php
							$cont++;
						}
						?>
					</div>

					<?php
					$cont = 1;
					foreach ($slides as $slide) {
						?>
						<div class="orbit-caption" id="caption<?= $cont ?>"><?= $slide["titulo"] ?></div>

						<?php
						$cont++;
					}
					?>	
				</div>

			</div>

		</section>

	</div>
	<?php
	$this->load->view("footer", $footer);
	?>

	<!-- Included JS Files (Compressed) -->
	<script src="javascripts/jquery.js"></script>
	<script src="javascripts/foundation.min.js"></script>

	<!-- Initialize JS Plugins -->
	<script src="javascripts/app.js"></script>
	<script src="javascripts/main.js"></script>


	<script>
	$(window).load(function(){
		$("#featured").orbit({
			fluid: '30x14'
		});
	});
	</script> 

</body>
</html>
