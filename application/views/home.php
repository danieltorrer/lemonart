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
    <div class="contenedor">
        <section>
            <div class="row">
                <div class="twelve columns">
                    <h5><?= $lemonprincipal[0]["texto"] ?></h5>
                    <hr/>
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
                                <a href="<?= $slide["enlace"] ?>">
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

        <!--<section class="destacados">
            <div class="row destacado">
                <?php
                    //var_dump($artistasdestacados["datos"]);
                ?>

                <div class="three columns mobile-two descripcion-destacado">
                    <div>
                        <h3>Artistas</h3>
                    </div>

                    <div>
                        <p><?= $artistasd[0]["texto"] ?></p>
                    </div>

                    <a class="small button left" href="<?= base_url() ?>artistas">Ver Artistas</a>
                </div>

                <?php
                $clase = "";
                $conta = 1;
                foreach ($artistasdestacados["datos"] as $artista) {
                    if ($conta >= count($artistasdestacados["datos"])) {
                        $clase = "end";
                    }
                    ?>
                    <div class = "three columns mobile-two <?= $clase ?>">
                        <div class = "imgdestacado">
                            <a href="<?= base_url() ?>artistas/perfil/<?= $artista[0]["id_artista"] ?>">
                                <img src="<?= base_url() ?>/images/artistas/<?= $artista[0]["imagen"] ?>">
                            </a>
                        </div>
                    </div>

                    <?php
                    $conta++;
                }
                ?>
            </div>


            <div class="row destacado">

                <div class="three columns mobile-two descripcion-destacado">
                    <div>
                        <h3>Eventos</h3>
                    </div>

                    <div>
                        <p><?= $eventosd[0]["texto"] ?></p>
                    </div>

                    <div class="left margentop">
                        <a class="small button " href="<?= base_url() ?>eventos">Ver Eventos</a>
                    </div>
                </div>


                <?php
                $clase = "";
                $conta = 1;
                foreach ($eventosdestacados["datos"] as $evento) {
                    if ($conta >= count($eventosdestacados["datos"])) {
                        $clase = "end";
                    }
                    ?>
                    <div class = "three columns mobile-two <?= $clase ?>">
                        <div class = "imgdestacado">
                            <a href="<?= base_url() ?>eventos/evento/<?= $evento[0]["id_evento"] ?>">
                                <img src="<?= base_url() ?>images/eventos/<?= $evento[0]["imagen"] ?>">
                            </a>
                        </div>
                    </div>
                    <?php
                    $conta++;
                }
                ?>
            </div>


            <div class="row destacado">

                <div class="three columns mobile-two descripcion-destacado">
                    <div>
                        <h3>Colaboradores</h3>
                    </div>

                    <div>
                        <p><?= $colaboradoresd[0]["texto"] ?></p>
                    </div>

                    <div class="left margentop">
                        <a class="small button " href="<?= base_url() ?>colaboradores">Ver Colaboradores</a>
                    </div>
                </div>

                <?php
                $clase = "";
                $conta = 1;
                foreach ($colaboradoresdestacados["datos"] as $colaborador) {
                    if ($conta >= count($colaboradoresdestacados["datos"])) {
                        $clase = "end";
                    }
                    ?>
                    <div class = "three columns mobile-two <?= $clase ?>">
                        <div class = "imgdestacado">
                            <a><img src="<?= base_url() ?>images/colaboradores/<?= $colaborador[0]["logo"] ?>"></a>
                        </div>
                    </div>
                    <?php
                    $conta++;
                }
                ?>				

            </div>

        </section>-->
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
        $("#featured").orbit();
    });
    </script> 

</body>
</html>
