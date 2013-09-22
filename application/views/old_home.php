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