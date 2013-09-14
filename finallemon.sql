-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-05-2013 a las 06:30:53
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `lemonart`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anio`
--

CREATE TABLE IF NOT EXISTS `anio` (
  `id_anio` int(11) NOT NULL AUTO_INCREMENT,
  `anio` int(11) NOT NULL,
  PRIMARY KEY (`id_anio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `anio`
--

INSERT INTO `anio` (`id_anio`, `anio`) VALUES
(1, 2013),
(2, 2012),
(3, 2011),
(4, 2010),
(5, 2009),
(6, 2008),
(9, 2014),
(10, 2015),
(11, 2016),
(12, 2017);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE IF NOT EXISTS `artista` (
  `id_artista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `biografia` text NOT NULL,
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`id_artista`, `nombre`, `imagen`, `biografia`) VALUES
(1, 'Bernardo Jaramillo ', 'db9c5-jaramillo.jpg', '<p>\r\n Nacido en Guadalajara Jalisco el 26 de junio de 1981. Bernardo Jaramillo creci&oacute; junto con sus padres en Tecuala Nayarit rodeado de la naturaleza, a pesar de tener ascendencia familiar con inclinaciones al arte, Jaramillo se negaba cuando su padre lo quer&iacute;a ense&ntilde;ar a dibujar, siempre buscando alternativas de rayar paredes y cuadernos.</p>\r\n<p>\r\n Cuando sus papas deciden mudarse a Tijuana encontr&oacute; una puerta al surrealismo y en 1996 decidi&oacute; agarrar los pinceles jugando descubriendo la fascinaci&oacute;n que siempre tuvo y se mantuvo en el anonimato muchos a&ntilde;os pintando solo para &eacute;l, fue hasta el 2003 que decide entrar a clases en la Casa de la Cultura con el profesor Humberto Barba quien decidi&oacute; darle una beca y orientarlo para realizar sus primeras exposiciones el cual obtuvo apoyo y aceptaci&oacute;n de las instituciones de gobierno, relacion&aacute;ndose para la realizaci&oacute;n de algunos trabajos en conciertos grandes y despu&eacute;s de algunos a&ntilde;os decide iniciar a independizarse siendo el fundador del Colectivo Resistencia.</p>\r\n<p>\r\n Ha trabajado en dise&ntilde;o de escenograf&iacute;as de reggae, rock, pasarelas, exposiciones como lo es expo c&oacute;smica, en festivales como festi arte, opera en la calle, Wall fame, festivales urbanos, Tijuana progresivo religiosos, Jaramillo ha visto la pintura como un crecimiento espiritual, siempre le ha gustado tener contacto con la gente para sensibilizarlos hacia las artes pl&aacute;sticas y ha impartiendo clases de pintura a ni&ntilde;os, tambi&eacute;n ha tenido participaci&oacute;n y realizaci&oacute;n de m&aacute;s de 60 exposiciones a lo largo de su trayectoria y actualmente forma parte del colectivo Lemon Art como artista exclusivo.</p>\r\n'),
(2, 'David Castillo', '331fc-david.jpg', '<p>\r\n Un artista pl&aacute;stico, con 18 a&ntilde;os de experiencia en el campo de la arquitectura.</p>\r\n<p>\r\n Incursiono en las artes desde temprana edad. Inicia su estudio formal en las artes en Punto &Aacute;ureo, dibujo y pintura a finales de los 90s. M&aacute;s tarde se inicia como escultor autodidacta haciendo escultura met&aacute;lica de fierro dulce en el 2003.</p>\r\n<p>\r\n Motivado por el inter&eacute;s de foto-documentar su propia obra y En el 2004 retoma la fotograf&iacute;a an&aacute;loga, la cual adopta como otro medio de expresi&oacute;n; preparaci&oacute;n que culmina asistiendo al taller de fotograf&iacute;a de Alfredo Cornejo. En el 2006 hace la transici&oacute;n de fotograf&iacute;a an&aacute;loga a digital. Siendo esta &uacute;ltima actividad, actualmente, el medio de expresi&oacute;n predominante de su trabajo, tanto art&iacute;stico como profesional.</p>\r\n<p>\r\n Exposiciones m&aacute;s destacadas:</p>\r\n<ul>\r\n <li>\r\n  Graduaci&oacute;n de curso en la galler&iacute;a de Alma Moreno Tijuana Pintura</li>\r\n <li>\r\n  Colectiva en el Centro GIA Tijuana Pintura</li>\r\n <li>\r\n  Colectiva en la universidad CESUN Tijuana Pintura + Dibujo</li>\r\n <li>\r\n  Individual en el lobby del edificio Cima Tijuana Pintura + Escultura</li>\r\n <li>\r\n  Individual &ldquo;Mec&aacute;nica&rdquo; Casa de la Cultura Tijuana Pintura + Escultura</li>\r\n <li>\r\n  Colectiva en &ldquo;COVA&rdquo; en Solana Beach, California, E.U. Escultura</li>\r\n <li>\r\n  Colectiva Zona Norte en S&oacute;tano Rita Tijuana Pintura</li>\r\n <li>\r\n  Varias del Foto-documental &ldquo;En Tierra De Nadie&rdquo;:</li>\r\n <li>\r\n  Individual M&eacute;xico D.F. Fotograf&iacute;a</li>\r\n <li>\r\n  Individual Reuni&oacute;n Nacional &#39;09 SEP Tijuana Fotograf&iacute;a</li>\r\n <li>\r\n  Colectiva Semana Nacional de Migraci&oacute;n &#39;09 M&eacute;xico D.F. Fotograf&iacute;a+Talleres+Foro</li>\r\n <li>\r\n  Individual Congreso de derechos Humanos y Migraci&oacute;n Tijuana B.C. Fotograf&iacute;a</li>\r\n <li>\r\n  Individual 7mo congreso de Investigaci&oacute;n Acci&oacute;n &#39;10 San Diego CA Fotograf&iacute;a</li>\r\n <li>\r\n  Iconograf&iacute;a: Un retrato,una historia by Lemon Art en Casa de la Cultura Tijuana + Fotograf&iacute;a</li>\r\n <li>\r\n  Exxxpo Er&oacute;tica 2010 + Fotograf&iacute;a er&oacute;tica + Sesi&oacute;n de fotos en vivo.</li>\r\n <li>\r\n  Entijuanarte 2010 + Fotograf&iacute;a</li>\r\n</ul>\r\n<p>\r\n Actualmente mantiene sus proyectos:</p>\r\n<h6>\r\n Estudio VIRTUAL</h6>\r\n<p>\r\n En el 2001 inicia su propio estudio que actualmente coordina, donde une su experiencia como consultista independiente con las artes visuales, un estudio integrado por un grupo multidisciplinario enfocado al desarrollo de proyectos arquitect&oacute;nicos yestructurales, dise&ntilde;o arquitect&oacute;nico y consultor&iacute;a externa, dise&ntilde;o sustentable, y la elaboraci&oacute;n de proyectos de artes visuales.</p>\r\n<h6>\r\n Fotograf&iacute;a Profesional</h6>\r\n<p>\r\n A partir del 2004 incorpora la fotograf&iacute;a a su estudio de arte y en el 2007 da la transici&oacute;n de an&aacute;loga a digital, desarrollando fotograf&iacute;a de arquitectura, paisaje urbano y natural, retrato, foto documental, y fotograf&iacute;a de arte.</p>\r\n'),
(3, 'Gabriel Ledon', '084fe-ledon.jpg', '<p>\r\n Artista independiente (Esc&eacute;nico y visual) &nbsp;graduado del instituto universitario de bellas artes de la universidad de colima. Su trabajo se desarrolla tanto en lo esc&eacute;nico como en lo pl&aacute;stico, a colaborado como director y bailar&iacute;n de la compa&ntilde;&iacute;a p&eacute;ndulo cero con trabajos como: &ldquo;Ciudad de p&aacute;jaros&rdquo; 2008, &ldquo;Kb9&rdquo; 2009, y el espect&aacute;culo completo &ldquo;Cruce Peatonal&rdquo; 2009. Ganador de la beca &nbsp;q otorga el Fondo Estatal para la Cultura y las Artes, dentro de la categor&iacute;a J&oacute;venes Creadores 2008-2009, &nbsp;ha participado en diferentes compa&ntilde;&iacute;as como grupo de danza Minerva Tapia y el Ballet del Noroeste.</p>\r\n<p>\r\n Su inter&eacute;s por las Artes Pl&aacute;sticas lo ha llevado a desarrollar un trabajo basado en la b&uacute;squeda de lenguaje con elementos urbanos y cotidianos as&iacute; como una b&uacute;squeda constante de un estilo propio. Con la promotora cultural independiente Lemon art &nbsp;a colaborado en las siguientes exposiciones. &ldquo;Festiarte&rdquo; 2009, &ldquo;Green Pink: Expo Recycle Art Tour&rdquo; 2009-2010 (5 exposiciones itinerantes en la ciudad), &ldquo;Literarture&rdquo;,2010, &ldquo;Iconograf&iacute;a: un retrato, una historia&rdquo; actualmente exponiendo en Casa de la Cultura Tijuana, entre otras. Por otro lado se destacan sus colaboraciones con la compa&ntilde;&iacute;a de teatro norte teatro en los montajes &ldquo;PoeSida 2008&rdquo; y &ldquo;Quien ha visto a mi peque&ntilde;o ni&ntilde;o&rdquo; 2010. &nbsp;Actualmente es director del proyecto visual Esfera; tambien en la edicion de la revista virtual &ldquo;No palabra&rdquo;; As&iacute; como tambi&eacute;n &nbsp;es maestro de la Escuela de Danza Gloria Campobello en la ciudad de Tijuana.</p>\r\n'),
(16, 'Damariz Aispuro', 'dfc2a-aispuro.JPG', '<p>\r\n Naci&oacute; en Tijuana, Baja California el 21 de agosto del 1984, para ella el arte siempre ha sido fundamental, cuando era ni&ntilde;a &nbsp;le encantaba &nbsp;tomar &nbsp;un l&aacute;piz y hacer dibujos por la pared, le encantaban los colores y pod&iacute;a pasar horas coloreando.</p>\r\n<p>\r\n En adolescencia se inclin&oacute; por el grafiti &nbsp;lo &nbsp;que la llev&oacute; por alg&uacute;n rumbo equivocado, pero siempre tuvo muy en &nbsp;claro que la pintura y el dibujo eran de las cosas &nbsp;que la llenaban.</p>\r\n<p>\r\n Interrumpi&oacute; sus estudios de preparatoria por &nbsp;incursionar en el modelaje, participando en varios eventos y desfiles de moda. A la edad de 18 a&ntilde;os, por circunstancias de vida suspendi&oacute; su carrera como modelo y fue cuando se dedic&oacute; de lleno a la pintura. Se enfoc&oacute; en &nbsp;elaborar sus propios cuadros y decidi&oacute; participar en algunas exposiciones colectivas, tales como V&iacute;a Libre, programa realizado por IMAC y La Secretar&iacute;a de Desarrollo Social en donde el arte era el protagonista en una de las principales avenidas de Tijuana, colabor&oacute; en una fundaci&oacute;n de artistas binacionales en varias ocasiones y &nbsp;expuso en galer&iacute;as de IMAC.</p>\r\n<p>\r\n Despu&eacute;s de un tiempo se le invit&oacute; a exponer con la promotora cultural Lemon Art gracias a una convocatoria del evento Pizz-arte 2, arte en caja de pizza, &nbsp;en donde encontr&oacute; una manera de trabajar mas seria y en la cual actualmente sigue como artista activa, entre algunas de las actividades que ha realizado fueron: dar talleres de pintura en ferias IMJUV, particip&oacute; en Citrixxx Atraxxxion exposici&oacute;n de arte er&oacute;tico, y gracias a ello se le hizo invitaci&oacute;n a colocar su obra en &nbsp;Exxxpo Er&oacute;tica 2010.</p>\r\n<p>\r\n Sus planes a futuro es abrir un camino en Estados Unidos para los artistas que viven en frontera, el enfoque de sus obras es transmitir &nbsp;emociones y mensajes en donde no hay l&iacute;mites fronterizos.</p>\r\n<p>\r\n Actualmente se encuentra estudiando dibujo b&aacute;sico y pintura pues busca la profesionalizaci&oacute;n de t&eacute;cnica y a explorar a trav&eacute;s del lienzo.</p>\r\n'),
(17, 'Lilian Victoria Guillermo Magaña', '9e0d2-lilian.JPG', '<p>\r\n Naci&oacute; en Tijuana hace apenas 16 a&ntilde;os. Con unas ganas de retratar los momentos de la vida m&aacute;s fuertes que las de cualquier joven de su edad, toma su inseparable c&aacute;mara y dispara el obturador profesionalmente desde los 14. Apasionada de las artes visuales, la fotograf&iacute;a no es su &uacute;nico inter&eacute;s. El dise&ntilde;o gr&aacute;fico tambi&eacute;n ha llamado su atenci&oacute;n, por lo que actualmente cursa el bachillerato en esta especialidad. Lilian funge desde 2009 como la dise&ntilde;adora gr&aacute;fica oficial de &#39;La Galer&iacute;a de la Esquina&#39;, espacio cultural independiente donde labora.</p>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistasdestacados`
--

CREATE TABLE IF NOT EXISTS `artistasdestacados` (
  `id_destacado` int(11) NOT NULL AUTO_INCREMENT,
  `id_artista` int(11) NOT NULL,
  PRIMARY KEY (`id_destacado`),
  KEY `id_artista` (`id_artista`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `artistasdestacados`
--

INSERT INTO `artistasdestacados` (`id_destacado`, `id_artista`) VALUES
(9, 1),
(6, 2),
(7, 3),
(10, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id_entrada` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(500) NOT NULL,
  `texto` text NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_entrada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador`
--

CREATE TABLE IF NOT EXISTS `colaborador` (
  `id_colaborador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id_colaborador`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `colaborador`
--

INSERT INTO `colaborador` (`id_colaborador`, `nombre`, `logo`, `descripcion`) VALUES
(1, 'Bunker Productions', 'e81c0-bunker.jpg', '<p>\r\n Renta de equipo y producci&oacute;n de eventos.</p>\r\n<p>\r\n <span>Ofrecer un concepto comprometido con<br />\r\n tus expectativas.</span></p>\r\n<p>\r\n <span>Av. Jalapa No.3172-11 Col. Neidhard,<br />\r\n 22020 Tijuana, Mexico<br />\r\n Lun - Dom: 10:00 - 14:00<br />\r\n 16:00 - 20:00</span></p>\r\n'),
(2, 'Publi SMS', 'e666c-colab_publisms.png', '<p>\r\n Servicio de Publicidad SMS a radios Nextel.</p>\r\n'),
(3, 'Markcom', 'dcc62-colab_markcom.png', '<p>\n Agencia de Mercadotecnia que brinda servicios de publicidad, investigaci&oacute;n de mercados, capacitaci&oacute;n, consultor&iacute;a, social media, programaci&oacute;n y desarrollo web.</p>\n<p>\n <a href="https://www.facebook.com/markcommx">Facebook</a> <a href="https://twitter.com/markcommx">Twitter</a> <a href="http://www.markcom.com.mx/">Web</a></p>\n'),
(4, 'Galería de la esquina', '4d4ee-colab_galesquina.png', '<p>\r\n Galer&iacute;a de la Esquina</p>\r\n<p>\r\n Somos un espacio cultural independiente que apoya&nbsp;<br />\r\n el arte en todas sus formas &amp; manifestaciones.&nbsp;<br />\r\n Asimismo damos un ambiente c&aacute;lido &amp; comfortable&nbsp;<br />\r\n donde puedes venir a tomar caf&eacute; &amp; platicar.&nbsp;<br />\r\n Nuestro objetivo es difundir el talento de<br />\r\n artistas de la regi&oacute;n.&nbsp;<br />\r\n Nuestra agenda incluye muestras artesanales,&nbsp;<br />\r\n exposiciones de fotograf&iacute;a, pintura,<br />\r\n conciertos &amp; teatro.&nbsp;<br />\r\n <br />\r\n Ubicados en Esquina<br />\r\n Independencia &amp; Aldama #1015 Col. Independencia&nbsp;<br />\r\n <br />\r\n <a href="http://www.facebook.com/lagaleriadelaesquina" target="_blank">www.facebook.com/lagaleriadelaesquina</a></p>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaboradoresdestacados`
--

CREATE TABLE IF NOT EXISTS `colaboradoresdestacados` (
  `id_destacado` int(11) NOT NULL AUTO_INCREMENT,
  `id_colaborador` int(11) NOT NULL,
  PRIMARY KEY (`id_destacado`),
  KEY `id_colaborador` (`id_colaborador`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `colaboradoresdestacados`
--

INSERT INTO `colaboradoresdestacados` (`id_destacado`, `id_colaborador`) VALUES
(4, 2),
(2, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descripcion`
--

CREATE TABLE IF NOT EXISTS `descripcion` (
  `id_descripcion` int(11) NOT NULL AUTO_INCREMENT,
  `texto` varchar(1000) NOT NULL,
  `posicion` varchar(300) NOT NULL,
  `clave` varchar(100) NOT NULL,
  PRIMARY KEY (`id_descripcion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `descripcion`
--

INSERT INTO `descripcion` (`id_descripcion`, `texto`, `posicion`, `clave`) VALUES
(1, 'Lemon Art es un espacio de expresión artística que funge como promotora de eventos culturales, haciendo accesible la apreciación y la promoción tanto del artista como de su obra.', 'Descripción principal de lemon art.', 'lemonprincipal'),
(2, 'Es un espacio de expresión artística que funge como promotora de eventos culturales, haciendo accesible la apreciación y la promoción tanto del artista como de su obra.', 'Descripcion footer lemon art', 'lemonfooter'),
(3, 'Hemos trabajado con mas de N artistas', 'Descripcion artistas destacados', 'artistadestacado'),
(4, 'Artistas con los que hemos trabajado', 'Descripcion artistas ', 'artista'),
(5, 'Cosas legales', 'Footer legal', 'legalfooter'),
(6, 'Hemos organizado mas de N eventos en mas de N estados', 'Descripcion eventos destacados', 'eventodestacado'),
(8, '', 'Descripcion colaboradores destacados home', 'colaboradordestacado'),
(9, 'Descripcion colaboradores', 'Descripcion colaboradores', 'colaborador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destacados`
--

CREATE TABLE IF NOT EXISTS `destacados` (
  `id_destacado` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `enlace` varchar(500) NOT NULL,
  PRIMARY KEY (`id_destacado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE IF NOT EXISTS `evento` (
  `id_evento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `lugar` varchar(255) NOT NULL,
  `anio` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(255) NOT NULL,
  PRIMARY KEY (`id_evento`),
  KEY `anio` (`anio`),
  KEY `anio_2` (`anio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id_evento`, `nombre`, `lugar`, `anio`, `descripcion`, `fecha`, `imagen`) VALUES
(6, '1er congreso Nacional Juvenil de Mediación PGJE', 'Tijuana', 3, '<p>\r\n 1er congreso Nacional Juvenil de Mediaci&oacute;n PGJE</p>\r\n', '0000-00-00', '77720-1.jpg'),
(7, 'Pizza Arte', 'Tijuana', 5, '<p>\r\n Pizza Arte</p>\r\n', '2009-04-17', '4020d-7(9).jpg'),
(8, 'Lemon Kids', 'Tijuana', 5, '<p>\r\n Lemon Kids</p>\r\n', '2009-12-19', '2eccc-1(18).jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventosdestacados`
--

CREATE TABLE IF NOT EXISTS `eventosdestacados` (
  `id_destacado` int(11) NOT NULL AUTO_INCREMENT,
  `id_evento` int(11) NOT NULL,
  PRIMARY KEY (`id_destacado`),
  KEY `id_evento` (`id_evento`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `eventosdestacados`
--

INSERT INTO `eventosdestacados` (`id_destacado`, `id_evento`) VALUES
(7, 6),
(8, 7),
(9, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_proximo`
--

CREATE TABLE IF NOT EXISTS `evento_proximo` (
  `id_eventoproximo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `enlace` varchar(500) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(255) NOT NULL,
  PRIMARY KEY (`id_eventoproximo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home`
--

CREATE TABLE IF NOT EXISTS `home` (
  `que_es_lemon` text NOT NULL,
  `descripcion_artista` text NOT NULL,
  `descripcion_evento` text NOT NULL,
  `descripcion_colaboradores` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE IF NOT EXISTS `imagenes` (
  `id_imagen` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  PRIMARY KEY (`id_imagen`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id_imagen`, `imagen`) VALUES
(1, 'cfdca74cecc655a37cf393c477b61c7a.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integrantes`
--

CREATE TABLE IF NOT EXISTS `integrantes` (
  `id_integrante` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id_integrante`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `integrantes`
--

INSERT INTO `integrantes` (`id_integrante`, `nombre`, `descripcion`) VALUES
(1, 'Adaí Villarreal', '<p>\r\n Nacida el 4 de enero de 1984 en la siempre controversial Tijuana Baja California, mostrando simpat&iacute;a por la c&aacute;mara de video ingresa a la Licenciatura de Ciencias de la Comunicaci&oacute;n con la finalidad de explorar m&aacute;s sobre este &aacute;mbito colaborando con el colectivo Yonke Art en un programa llamado Polen Project con la finalidad de acercar la inquietud a los ni&ntilde;os de primaria al cine, tambi&eacute;n realiz&oacute; el cortometraje que recorri&oacute; planteles preparatorianos y &nbsp;universitarios llamado &ldquo;La Faraona&rdquo;, cortometraje que relata una leyenda de Tijuana, realiz&oacute; varios proyectos para televisi&oacute;n y radio por Internet en la secci&oacute;n cultural.\r\n</p>\r\n<p>\r\n En 2005 imparti&oacute; un taller de cine en el programa pionero de Desarrollo Social &nbsp;Municipal. En el cual se realiz&oacute; como proyecto final un video metraje idea original de los ni&ntilde;os de primaria, mismos que se les orient&oacute; al manejo de la c&aacute;mara y lo referente a direcci&oacute;n, actuaci&oacute;n y maquillaje.</p>\r\n<p>\r\n En el mismo a&ntilde;o realiz&oacute;, produjo, grab&oacute; y edit&oacute; de 5 videos institucionales para el Instituto de Cultura de Baja California (ICBC), como parte de servicio social y desarrollo profesional, as&iacute; como apoyando en eventos culturales, para crear una motivaci&oacute;n a la comunidad tijuanense as&iacute; como generarles inter&eacute;s de apoyar el arte local.\r\n</p>\r\n<p>\r\n En el 2006 hasta la actualidad promueve por su cuenta una agenda semanal cultural v&iacute;a e-mail manejando una base de datos y tratando de atraer gente al gusto cultural, &nbsp;con todas las actividades que se manejan en la ciudad y sus alrededores desde eventos en galer&iacute;a como eventos independientes. Apoyando el arte y la m&uacute;sica local.\r\n</p>\r\n<p>\r\n A finales del 2008 y principios del 2009 fungi&oacute; en la administraci&oacute;n de el caf&eacute; + galer&iacute;a Distrito 10, de asistente personal de la cabeza principal del mismo, organizaci&oacute;n de eventos, promoci&oacute;n y difusi&oacute;n tanto de los eventos como del caf&eacute;.\r\n</p>\r\n<p>\r\n As&iacute; mismo en Agosto del 2008 ingresa al colectivo Lemon Art siendo la Coordinadora General del proyecto.\r\n</p>\r\n</p>'),
(2, 'Ivonne Zepeda', '<p>Nacida un 27 de agosto de 1984 en la siempre bulliciosa y llena de vida Ciudad de México, D.F. adora la música y no pierde oportunidad para disfrutarla, cinéfila y crítica difícil de complacer, publirrelacionista de corazón, contrastan su pasión por la lectura y el Internet.</p>\r\n\r\n<p>Se crió hasta sus 14 años dentro de la gran urbe. Viniendo de una familia humilde y buscadora de oportunidades, en el año 1998 toman la decisión de emigrar a la ciudad de Tijuana, a la cual adoptan como su ciudad, y en ésta noble frontera establecieron su nuevo hogar. \r\nUn año más tarde, ingresa a cursar sus estudios de nivel medio superior al Colegio de Bachilleres de B.C. “Mtro. Rubén Vizcaíno Valencia” en la especialidad en Administración de Empresas. En donde se desempeña excelentemente y destacan sus habilidades para distintas disciplinas del conocimiento. Siendo aquí dónde decide ingresar posteriormente a la máxima casa de estudios de la entidad, campus Tijuana.</p>\r\n\r\n<p>Titulada de la carrera Licenciatura en Informática de la Universidad Autónoma de Baja California Campus Tijuana en 2007, se ha  desempeñado en el área de soporte técnico, desarrollo web y teniendo la iniciativa propia de actualizarse en el área de tecnología. A su vez ha tenido la  experiencia  dentro del área de compras para el manejo de almacén, así  como auxiliar de sistemas informáticos, relaciones públicas y todo lo referente a la administración.\r\nActualmente forma parte de una de las más importantes promotoras independientes de la región bajacaliforniana Lemon Art como encargada de la administración, finanzas y presupuesto. \r\nDentro de sus objetivos profesionales se encuentran el continuar con su labor a nivel profesional en el área de Informática como desarrollador de Páginas Web, sistemas y soporte técnico; y seguir colaborando como administradora de Lemon Art, ya que considera único y realmente indispensable el trabajo de esta promotora que busca espacios para la expresión artística y cultural de los artistas ayudándolos a exhibir sus creaciones y brindándoles el apoyo que requieren.</p>'),
(3, 'Tadashi Soriano', '<p>Nacido en la hermosa fronteriza y siempre controversial cuidad de Tijuana, Baja California, el 14 de Noviembre de 1982, Escorpio 100%,  Amante del color Rojo, Comunicólogo de profesión, crítico y perfeccionista.</p>\r\n\r\n<p>Con habilidades para el diseño, imagen y la publicidad, desde que inicio sus estudios en Agosto de 2002 en la carrera de Ciencias de la Comunicación, teniendo como base e interés la fotografía publicitaria, producción y post producción de videos, se comenzó a desarrollar en la realización y coordinación de diferentes tipos de eventos, conferencias, etc, durante sus años de estudio.</p>\r\n\r\n<p>Egresado de la Academia de Locución RadioMedia Tijuana en Diciembre de 2004, obteniendo al finalizar su diplomado la Constancia de Habilidades Laborales Formato DC-3, en el cual se percato de sus habilidades para la locución poniéndolas en práctica por medio de la internet, sacando al cyber espacio su programa llamado In D’ Xone a través de radiomediabroadcasting.com.</p>\r\n<p>\r\nInteresado en desarrollarse y ampliar más su conocimiento tuvo la oportunidad de entrar como practicante en Noviembre de 2005 a Grupo Uniradio en el Departamento de Mercadotecnia.</p>\r\n\r\n<p>Así como por causas del destino para Marzo de 2007 terminó prestando su voz para el doblaje de programas educativos “Countries Arround the world” y de varias películas para Producciones Calderón en el nivel de niños y pre adolescentes.</p>\r\n\r\n<p>Como parte de su formación complementaria decidió ingresar en Agosto de 2007 a la Facultad de idiomas de UABC Campus Tijuana, tomando el curso de japonés, lengua extranjera de la cual proviene su nombre, la cual sigue cursando hasta el momento y a su vez también ingresando en Enero de 2008 a la Facultad de Turismo y Mercadotecnia cursando el Diplomado en Gerencia de Recursos Humanos y Dirección.</p>\r\n\r\n<p>Finalmente en Septiembre de 2008 lo invitan a colaborar con Lemon Art como Coordinador de Diseño e Imagen.</p>'),
(4, 'Carlos Vega', '<p>\r\n Nacido en la bella, hermosa y cosmopolita ciudad de Tijuana, justo en el coraz&oacute;n social de la misma, una tarde de domingo 9 de enero de 1983. De signo Capricornio, mexicano de valor, creci&oacute; en &lsquo;El Presi&rsquo;, pero conoce la ciudad como la palma de su mano. Comunic&oacute;logo, Chef, Cineasta, Multicultural por gusto, afici&oacute;n y definici&oacute;n, en&oacute;logo amateur, admirador de DaVinci, Maquiavelo, Enrique XVIII y Elizabeth I, amante de la arquitectura y la moda, el buen cine, el teatro y la literatura.</p>\r\n<p>\r\n Particip&oacute; en obras de teatro estudiantiles como guionista y director, aunque cuando egres&oacute; de un curso de locuci&oacute;n radiof&oacute;nica de 6 meses, descubri&oacute; su verdadera vocaci&oacute;n y decidi&oacute; matricularse para cursar la licenciatura en Ciencias de la Comunicaci&oacute;n.</p>\r\n<p>\r\n En 2002 ingresa a la universidad y se destaca en las &aacute;reas de redacci&oacute;n de guiones, producci&oacute;n y direcci&oacute;n para comerciales de radio y televisi&oacute;n, cortometrajes y otros proyectos de video, organizando castings, conferencias, eventos sociales y dem&aacute;s actividades relacionadas con la Comunicaci&oacute;n. Se interesa por el cine, la organizaci&oacute;n y promoci&oacute;n de eventos culturales, lo atraen los medios, pero finalmente decide ser el realizador de proyectos independientes que van desde video hasta comunicaci&oacute;n educativa y organizacional.</p>\r\n<p>\r\n En 2003 y 2004, es invitado a participar en el desarrollo de programas para Alphavision canal 54 de cable en Tijuana, en d&oacute;nde colabora en la realizaci&oacute;n de proyectos como &lsquo;Todos somos parte&rsquo; y &lsquo;Seguridad 066&rsquo; y tambi&eacute;n desarrolla para la televisi&oacute;n su proyecto de radio que anteriormente hab&iacute;a puesto al aire &lsquo;Desde Tijuana&rsquo;.</p>\r\n<p>\r\n En ese mismo 2004, dentro de la carrera se apeg&oacute; a las teor&iacute;as y a los te&oacute;ricos, se agrup&oacute; dentro del bando de los cient&iacute;ficos y fund&oacute; Ironique Communications al lado de sus compa&ntilde;eros de grupo. Con este primer colectivo graba su cortometraje debut &lsquo;La Faraona&rsquo;, el cual fue realizado en locaciones hist&oacute;ricas de Tijuana y dentro de los estudios Fox Baja; a principios de 2005 lo presenta oficialmente e inicia una gira documental por las escuelas Preparatorias y Universidades de Tijuana.</p>\r\n<p>\r\n A mediados de 2005, se incorpora al ICBC y colabora con ellos en la realizaci&oacute;n de 5 videos institucionales como parte de su prestaci&oacute;n de servicio social y desarrollo profesional, as&iacute; como apoyando en promoci&oacute;n de eventos culturales del instituto. Dirige la sesi&oacute;n fotogr&aacute;fica para el grupo de reggae &lsquo;Ca&ntilde;amo&rsquo; y a finales de ese a&ntilde;o colabora con DESOM en el desarrollo del plan de estudios para el Taller de Cine para ni&ntilde;os de escuelas primarias de escasos recursos, su proyecto es aceptado e imparte este taller a m&aacute;s de 600 alumnos. Participa como Organizador del Congreso Binacional de Pedagog&iacute;a organizado por la Universidad Univer Noroeste y realiza una memoria multimedia y una en video de dicho evento.</p>\r\n<p>\r\n Luego en 2006, egresa de la licenciatura en Ciencias de la Comunicaci&oacute;n y en 2007 decide formar parte del proyecto magazine &lsquo;Lemon Art&rsquo; galer&iacute;a cultural impresa con fines de distribuci&oacute;n local y regional para la promoci&oacute;n de nuevos talentos art&iacute;sticos y difusi&oacute;n de su obra.</p>\r\n<p>\r\n A finales de 2007 se consolida Lemon Art como un proyecto editorial naciente, pero cambia de rumbo cuando en agosto de 2008 nace Lemon Art, el colectivo de promoci&oacute;n art&iacute;stica y cultural, del cual es fundador y al que ha pertenecido hasta la fecha, colaborando dentro del departamento de Comunicaci&oacute;n Organizacional y Protocolo.</p>\r\n<p>\r\n Aunque no es sino hasta 2008 cuando concluye sus estudios universitarios formalmente, en los que reafirma su amor por la Comunicaci&oacute;n en todas sus &aacute;reas, as&iacute; como la Educaci&oacute;n, la Psicolog&iacute;a, el Arte y la Cultura. Este Lemon sigue fiel a sus ideales profesionales y retoma el rumbo de su carrera, colaborando en exhibiciones de arte, conciertos musicales, y dem&aacute;s eventos art&iacute;sticos y culturales promovidos por Lemon Art.</p>\r\n'),
(5, 'Nancy Garaibay', '<p>Nació el 15 de Agosto de 1983, en la ciudad de Tijuana, Baja California. Iniciando a temprana edad como fotógrafa amateur, después estudiando la Licenciatura en Ciencias de la Comunicación, y llevando el curso de fotografía profesional, convencida de que: “Una fotografía puede decir más que mil palabras”, decidió dedicarse a  ella como un medio para traducir de manera visual el idioma y el sentimiento musical.</p>\r\n<p>\r\nA finales del 2004, inició su carrera como fotógrafa, siendo Ely Guerra la primera cantante a la que capturó en el escenario de manera profesional, llevándola a ganar el primer lugar en una exposición a nivel universitario en Tijuana. Después, continuó de manera independiente cubriendo conciertos para su portafolio personal, con el cual al poco tiempo, fue invitada a cubrir eventos musicales para algunos medios independientes.</p>\r\n\r\n<p>En Agosto de 2006 formo parte de equipo de apoyo a logística del Festival de Cine de Baja California.</p>\r\n\r\n<p>En Enero del 2007, realizó sus prácticas profesionales en apoyo a logística con el equipo Club Tijuana. “Xoloitzcuintles de Caliente”. </p> \r\n\r\n<p>En febrero del 2008, cursó el diplomado en “Habilidades Gerenciales en Mercadotecnia” en la UABC.\r\n</p>\r\n<p>En julio del 2008, ya con un portafolio fotográfico bastante amplio, fue invitada como fotógrafa oficial de un evento alternativo en Tijuana. En septiembre de este mismo año a exponer parte de sus imágenes en “DINAMOV”, evento organizado por el comité cultural del gobierno de la ciudad. En diciembre tuvo una pequeña colaboración en la Revista “BACKSTAGE” de la ciudad de Guadalajara, Jalisco.</p>\r\n\r\n<p>En Marzo del 2009, la cantante Ely Guerra le abrió un espacio en su página oficial, exponiendo parte de las fotografías que forman parte de su portafolio.</p>\r\n\r\n<p>Actualmente, forma parte de la promotora cultural y musical Lemon Art como Coordinadora del Departamento de Mercadotecnia.</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logo`
--

CREATE TABLE IF NOT EXISTS `logo` (
  `id_logo` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(300) NOT NULL,
  PRIMARY KEY (`id_logo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `logo`
--

INSERT INTO `logo` (`id_logo`, `logo`) VALUES
(1, 'efe9e-logo.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nosotros`
--

CREATE TABLE IF NOT EXISTS `nosotros` (
  `id_nosotros` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `titulo` varchar(255) NOT NULL,
  PRIMARY KEY (`id_nosotros`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `nosotros`
--

INSERT INTO `nosotros` (`id_nosotros`, `nombre`, `descripcion`, `titulo`) VALUES
(1, '¿Qué es?', '<p>\r\n Es un espacio de expresi&oacute;n art&iacute;stica que funge como promotora de eventos culturales, haciendo accesible la apreciaci&oacute;n y la promoci&oacute;n tanto del artista como de su obra.</p>\r\n<p>\r\n LEMON ART surge de la necesidad de crear un espacio de expresi&oacute;n art&iacute;stica y cultural para los talentos de la region en las areas de pl&aacute;stica. Fotograf&iacute;a y dise&ntilde;o, as&iacute; como el arte literario. Desarrollar un espacio que preste el servicio de difusi&oacute;n a los hacedores de arte de la regi&oacute;n y a la vez, &eacute;sta sea un producto de inter&eacute;s para los anunciantes debido al mercado al que va dirigido a: j&oacute;venes universitarios y adultos interesados en el arte en sus distintas expresiones.</p>\r\n', 'que'),
(2, 'Misión', '<p>\r\n Busca ser un espacio de difusi&oacute;n para el talento art&iacute;stico de la regi&oacute;n, acercando el arte y sus nuevas propuestas a la gente. De la misma manera, el trabajo realizado funcionar&aacute; como un v&iacute;nculo intermediario en todo momento, entre el artista y sus obras y del p&uacute;blico que gusta de la aplicaci&oacute;n. En la actualidad, los vinculos entre el arte y la sociedad son escasos. Una de las razones por las cuales esto sucede es debido a ue los eventosd culturales que realizan en la regi&oacute;n no son difundidos de manera efectiva y s&oacute;lo de dan a conocer en circulos cerrados. Este proyecto funcionar&aacute; como una galeria abierta al publico, que llega hasta ellos de manera gratuita, as&iacute; la sociedad quedar&aacute; informada e invitada a los eventos culturales que se lleven a cabo en la zona. Adem&aacute;s, este proyecto no prentende ser un manual ni un instructivo, la idea es que el p&uacute;blico forme criterios, juzgue y seleccione lo que le gusta del arte. &Uacute;ltimamente, en la regi&oacute;n ha habido destellos de producci&oacute;n cultural</p>\r\n<p>\r\n &nbsp;</p>\r\n<p>\r\n Con LEMON ART se reforzar&aacute; del arte, los artistas y la cultura.</p>\r\n', 'mision'),
(3, 'Visión', '<p>\r\n La visi&oacute;n de Lemon Art en un futuro pr&oacute;ximo es consolidarse como la promotora cultural independiente n&uacute;mero uno en difusi&oacute;n del arte regional y convertirse en promotores e impulsares de nuevos proyectos a nivel estatal y nacional.</p>\r\n', 'vision');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obra`
--

CREATE TABLE IF NOT EXISTS `obra` (
  `id_obra` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(255) NOT NULL DEFAULT 'slide1.png',
  `id_artista` int(11) NOT NULL,
  `en_venta` enum('Si','No') NOT NULL DEFAULT 'No',
  `precio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_obra`),
  KEY `id_artista` (`id_artista`),
  KEY `id_artista_2` (`id_artista`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `obra`
--

INSERT INTO `obra` (`id_obra`, `titulo`, `descripcion`, `imagen`, `id_artista`, `en_venta`, `precio`) VALUES
(12, 'Snake', '<p>\n <strong>una obrea muy lorem lorem lorem lorem lorem lkjlk&ntilde;jsdfjbsdkjf</strong></p>\n<h  >\n <span ><strong>Trololol</strong></span></h3>\n', '2e636-innerspeaker.jpeg', 1, 'No', 1990);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id_slide` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(500) NOT NULL,
  `enlace` varchar(500) NOT NULL,
  `imagen` varchar(500) NOT NULL,
  PRIMARY KEY (`id_slide`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id_slide`, `titulo`, `enlace`, `imagen`) VALUES
(9, 'Titulo', 'https://www.facebook.com/lemonartj', 'e3ad6-ghosts05b.jpg'),
(10, 'Tame impala', 'https://twitter.com/lemon_art', '0156f-Tame-Impala-Elephant.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `password`) VALUES
(1, 'lemon', '0b1e21e4c337a71bc9cdff73de98d2c1a462277b');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistasdestacados`
--
ALTER TABLE `artistasdestacados`
  ADD CONSTRAINT `artistasdestacados_ibfk_1` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `colaboradoresdestacados`
--
ALTER TABLE `colaboradoresdestacados`
  ADD CONSTRAINT `colaboradoresdestacados_ibfk_1` FOREIGN KEY (`id_colaborador`) REFERENCES `colaborador` (`id_colaborador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`anio`) REFERENCES `anio` (`id_anio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `eventosdestacados`
--
ALTER TABLE `eventosdestacados`
  ADD CONSTRAINT `eventosdestacados_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `obra`
--
ALTER TABLE `obra`
  ADD CONSTRAINT `obra_ibfk_2` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
