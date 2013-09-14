-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-05-2013 a las 01:17:22
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
(1, 'Bernardo Jaramillo ', '0b1d2-pokecatsmaingif.gif', '<p>Nacido en Guadalajara Jalisco el 26 de junio de 1981. Bernardo Jaramillo creció junto con sus padres en Tecuala Nayarit rodeado de la naturaleza, a pesar de tener ascendencia familiar con inclinaciones al arte, Jaramillo se negaba cuando su padre lo quería enseñar a dibujar, siempre buscando alternativas de rayar paredes y cuadernos.\r\n</p>\r\n<p>Cuando sus papas deciden mudarse a Tijuana encontró una puerta al surrealismo y en 1996 decidió agarrar los pinceles jugando descubriendo la fascinación que siempre tuvo y se mantuvo en el anonimato muchos años pintando solo para él, fue hasta el 2003 que decide entrar a clases en la Casa de la Cultura con el profesor Humberto Barba quien decidió darle una beca y orientarlo para realizar sus primeras exposiciones el cual obtuvo apoyo y aceptación de las instituciones de gobierno, relacionándose para la realización de algunos trabajos en conciertos grandes y después de algunos años decide iniciar a independizarse siendo el fundador del Colectivo Resistencia.\r\n</p>\r\n<p>Ha trabajado en diseño de escenografías de reggae, rock, pasarelas, exposiciones como lo es expo cósmica, en festivales como festi arte, opera en la calle, Wall fame, festivales urbanos, Tijuana progresivo religiosos, Jaramillo ha visto la pintura como un crecimiento espiritual, siempre le ha gustado tener contacto con la gente para sensibilizarlos hacia las artes plásticas y ha impartiendo clases de pintura a niños, también ha tenido participación y realización de más de 60 exposiciones a lo largo de su trayectoria y actualmente forma parte del colectivo Lemon Art como artista exclusivo.</p>'),
(2, 'David Castillo', '740c2-fat-boy.gif', '<p>Un artista plástico, con 18 años de experiencia en el campo de la arquitectura.</p>\r\n\r\n<p>Incursiono en las artes desde temprana edad. Inicia su estudio formal en las artes en Punto Áureo, dibujo y pintura a finales de los 90s. Más tarde se inicia como escultor autodidacta haciendo escultura metálica de fierro dulce en el 2003.\r\n</p>\r\n<p>Motivado por el interés de foto-documentar su propia obra y En el 2004 retoma la fotografía análoga, la cual adopta como otro medio de  expresión; preparación que culmina asistiendo al taller de fotografía de Alfredo Cornejo. En el 2006 hace la transición de fotografía análoga a digital. Siendo esta última actividad, actualmente, el medio de expresión predominante de su trabajo, tanto artístico como profesional.\r\n</p>\r\n\r\n<p>Exposiciones más destacadas:</p>\r\n\r\n<ul>\r\n <li>Graduación de curso en la gallería de Alma Moreno Tijuana Pintura\r\n </li>\r\n <li>Colectiva en el Centro GIA Tijuana Pintura\r\n </li>Colectiva en la universidad CESUN Tijuana Pintura + Dibujo\r\n <li>Individual en el lobby del edificio Cima Tijuana Pintura + Escultura\r\n </li>Individual “Mecánica” Casa de la Cultura Tijuana Pintura + Escultura\r\n <li>Colectiva en “COVA” en Solana Beach, California, E.U. Escultura\r\n </li>\r\n <li>Colectiva Zona Norte en Sótano Rita Tijuana Pintura\r\n </li>\r\n <li>Varias del Foto-documental “En Tierra De Nadie”:\r\n </li>\r\n <li>Individual México D.F. Fotografía\r\n </li>\r\n <li>Individual Reunión Nacional ''09 SEP Tijuana Fotografía\r\n </li>\r\n <li>Colectiva Semana Nacional de Migración ''09 México D.F. Fotografía+Talleres+Foro\r\n </li>\r\n <li>Individual Congreso de derechos Humanos y Migración Tijuana B.C. Fotografía\r\n </li>\r\n <li>Individual 7mo congreso de Investigación Acción ''10 San Diego CA Fotografía\r\n </li>\r\n <li>Iconografía: Un retrato,una historia by Lemon Art en Casa de la Cultura Tijuana + Fotografía\r\n </li>\r\n <li>Exxxpo Erótica 2010 + Fotografía erótica + Sesión de fotos en vivo.\r\n </li>\r\n <li>Entijuanarte 2010 + Fotografía\r\n </li>\r\n</ul>\r\n\r\n<p>Actualmente mantiene sus proyectos:</p>\r\n\r\n<h6>Estudio VIRTUAL</h6>\r\n<p>En el 2001 inicia su propio estudio que actualmente coordina, donde une su experiencia como consultista independiente con las artes visuales, un estudio integrado por un grupo multidisciplinario enfocado al desarrollo de proyectos arquitectónicos yestructurales, diseño arquitectónico y consultoría externa, diseño sustentable, y la elaboración de proyectos de artes visuales.\r\n</p>\r\n\r\n<h6>Fotografía Profesional</h6>\r\n\r\n<p>A partir del 2004 incorpora la fotografía a su estudio de arte y en el 2007 da la transición de análoga a digital, desarrollando fotografía de arquitectura, paisaje urbano y natural, retrato, foto documental, y fotografía de arte.</p>'),
(3, 'Gabriel Ledon', '5b9c2-camara---copia.jpg', '<p>Artista independiente (Escénico y visual)  graduado del instituto universitario de bellas artes de la universidad de colima. Su trabajo se desarrolla tanto en lo escénico como en lo plástico, a colaborado como director y bailarín de la compañía péndulo cero con trabajos como: “Ciudad de pájaros” 2008, “Kb9” 2009, y el espectáculo completo “Cruce Peatonal” 2009. Ganador de la beca  q otorga el Fondo Estatal para la Cultura y las Artes, dentro de la categoría Jóvenes Creadores 2008-2009,  ha participado en diferentes compañías como grupo de danza Minerva Tapia y el Ballet del Noroeste.\r\n</p>\r\n<p>Su interés por las Artes Plásticas lo ha llevado a desarrollar un trabajo basado en la búsqueda de lenguaje con elementos urbanos y cotidianos así como una búsqueda constante de un estilo propio. Con la promotora cultural independiente Lemon art  a colaborado en las siguientes exposiciones. “Festiarte” 2009, “Green Pink: Expo Recycle Art Tour” 2009-2010 (5 exposiciones itinerantes en la ciudad), “Literarture”,2010, “Iconografía: un retrato, una historia” actualmente exponiendo en Casa de la Cultura Tijuana, entre otras. Por otro lado se destacan sus colaboraciones con la compañía de teatro norte teatro en los montajes “PoeSida 2008” y “Quien ha visto a mi pequeño niño” 2010.  Actualmente es director del proyecto visual Esfera; tambien en la edicion de la revista virtual “No palabra”; Así como también  es maestro de la Escuela de Danza Gloria Campobello en la ciudad de Tijuana.</p>'),
(16, 'Damariz Aispuro', '3d5b7-phm_wallpaper2_16x9.jpg', '<p>Nació en Tijuana, Baja California el 21 de agosto del 1984, para ella el arte siempre ha sido fundamental, cuando era niña  le encantaba  tomar  un lápiz y hacer dibujos por la pared, le encantaban los colores y podía pasar horas coloreando.\r\n</p>\r\n<p>En adolescencia se inclinó por el grafiti  lo  que la llevó por algún rumbo equivocado, pero siempre tuvo muy en  claro que la pintura y el dibujo eran de las cosas  que la llenaban. \r\n</p>\r\n<p>Interrumpió sus estudios de preparatoria por  incursionar en el modelaje, participando en varios eventos y desfiles de moda. A la edad de 18 años, por circunstancias de vida suspendió su carrera como modelo y fue cuando se dedicó de lleno a la pintura. Se enfocó en  elaborar sus propios cuadros y decidió participar en algunas exposiciones colectivas, tales como Vía Libre, programa realizado por IMAC y La Secretaría de Desarrollo Social en donde el arte era el protagonista en una de las principales avenidas de Tijuana, colaboró en una fundación de artistas binacionales en varias ocasiones y  expuso en galerías de IMAC.\r\n</p>\r\n<p>Después de un tiempo se le invitó a exponer con la promotora cultural Lemon Art gracias a una convocatoria del evento Pizz-arte 2, arte en caja de pizza,  en donde encontró una manera de trabajar mas seria y en la cual actualmente sigue como artista activa, entre algunas de las actividades que ha realizado fueron: dar talleres de pintura en ferias IMJUV, participó en Citrixxx Atraxxxion exposición de arte erótico, y gracias a ello se le hizo invitación a colocar su obra en  Exxxpo Erótica 2010.\r\n</p>\r\n<p>Sus planes a futuro es abrir un camino en Estados Unidos para los artistas que viven en frontera, el enfoque de sus obras es transmitir  emociones y mensajes en donde no hay límites fronterizos. \r\n</p>\r\n<p>Actualmente se encuentra estudiando dibujo básico y pintura pues busca la profesionalización de técnica y a explorar a través del lienzo. </p>'),
(17, 'Lilian Victoria Guillermo Magaña', 'd686c-108d5268191cb179fa0c46a5aa623da0.jpg', '<p>Nació en Tijuana hace apenas 16 años. Con unas ganas de retratar los momentos de la vida más fuertes que las de cualquier joven de su edad, toma su inseparable cámara y dispara el obturador profesionalmente desde los 14. Apasionada de las artes visuales, la fotografía no es su único interés. El diseño gráfico también ha llamado su atención, por lo que actualmente cursa el bachillerato en esta especialidad. Lilian funge desde 2009 como la diseñadora gráfica oficial de ''La Galería de la Esquina'', espacio cultural independiente donde labora.\r\n</p>');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`id_entrada`, `titulo`, `texto`, `fecha`) VALUES
(13, 'Futuro', '<p>\r\n	asdasdasdasdasdasd</p>\r\n', '2013-04-01'),
(14, 'Pasado', '<p>\r\n	jsdlasjdljasldkjaskldjaskldjl</p>\r\n', '2013-01-01'),
(15, 'adad', '<p>\r\n	jslkajsldjasld</p>\r\n', '2013-04-11');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `colaborador`
--

INSERT INTO `colaborador` (`id_colaborador`, `nombre`, `logo`, `descripcion`) VALUES
(1, 'Lorem asd', '227a7-colaborador1.gif', '<p>\r\n	Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n'),
(2, 'Publi SMS', '1a475-colab_publisms.png', '<p>\r\n Servicio de Publicidad SMS a radios Nextel.</p>\r\n'),
(3, 'Markcom', 'ad445-colab_markcom.png', '<p>Agencia de Mercadotecnia que brinda servicios de publicidad, investigación de mercados, capacitación, consultoría, social media, programación y desarrollo web.</p>\r\n\r\n<a href="https://www.facebook.com/markcommx">Facebook</a>\r\n<a href="https://twitter.com/markcommx">Twitter</a>\r\n<a href="http://www.markcom.com.mx/">Web</a>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaboradoresdestacados`
--

CREATE TABLE IF NOT EXISTS `colaboradoresdestacados` (
  `id_destacado` int(11) NOT NULL AUTO_INCREMENT,
  `id_colaborador` int(11) NOT NULL,
  PRIMARY KEY (`id_destacado`),
  KEY `id_colaborador` (`id_colaborador`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `colaboradoresdestacados`
--

INSERT INTO `colaboradoresdestacados` (`id_destacado`, `id_colaborador`) VALUES
(1, 1);

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
(3, 'Descripción artistas destacados', 'Descripcion artistas destacados', 'artistadestacado'),
(4, 'Descripcion artistas', 'Descripcion artistas ', 'artista'),
(5, 'Cosas legales', 'Footer legal', 'legalfooter'),
(6, 'Descripcion eventos destacados', 'Descripcion eventos destacados', 'eventodestacado'),
(8, 'Descripcion colaboradores destacados', 'Descripcion colaboradores destacados home', 'colaboradordestacado'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id_evento`, `nombre`, `lugar`, `anio`, `descripcion`, `fecha`, `imagen`) VALUES
(1, 'Uno', 'Tijuana | Galeria 1', 5, '<p>\r\n	Plop plop plop plop</p>\r\n', '0000-00-00', ''),
(2, 'Nuevo', 'Tijuana', 12, 'ljasdlkajdlkd', '0000-00-00', ''),
(3, 'Nuevo', 'Tijuana', 6, 'atwszxerctgvyibuhoni', '0000-00-00', ''),
(4, 'Tal evento', 'Arte y galeria', 4, '<p>\r\n	Fue un peque&ntilde;o evento de tal tal tal tal</p>\r\n', '2013-04-17', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventosdestacados`
--

CREATE TABLE IF NOT EXISTS `eventosdestacados` (
  `id_destacado` int(11) NOT NULL AUTO_INCREMENT,
  `id_evento` int(11) NOT NULL,
  PRIMARY KEY (`id_destacado`),
  KEY `id_evento` (`id_evento`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `eventosdestacados`
--

INSERT INTO `eventosdestacados` (`id_destacado`, `id_evento`) VALUES
(1, 4);

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
(2, 'Misión', '"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'mision'),
(3, 'Visión', '"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'vision');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Volcado de datos para la tabla `obra`
--

INSERT INTO `obra` (`id_obra`, `titulo`, `descripcion`, `imagen`, `id_artista`, `en_venta`, `precio`) VALUES
(4, '', 'ksjahcnasjdhfvklsjdhfkl ksncnjslk klcasjhklfjashdcn alscnjfhklcfn', '', 3, 'No', 0),
(10, '', 'lcnlskfnj lasdnclsdnaf', '', 2, '', 0),
(11, '', 'lsackjlank lkasnclnkfv lkasndvlnk ', '', 3, '', 0),
(12, 'Snake', '<p>\r\n	<strong>una obrea muy lorem lorem lorem lorem lorem lkjlk&ntilde;jsdfjbsdkjf</strong></p>\r\n<h3 style="color:blue;">\r\n	<span style="font-family:arial,helvetica,sans-serif;"><strong>Trololol</strong></span></h3>\r\n', '0f347-SnakesOnPlane_Fullpic_1.gif', 1, 'No', 1990),
(13, '', 'ljcanjlkasnjlvln llkasdjnlksacnñkasdfoui ñlaksdjcfnlñskadnjf lñasdncklfncd ñklasdncñklsndfcvn ', '', 1, '', 0),
(14, '', 'ksjahcnasjdhfvklsjdhfkl ksncnjslk klcasjhklfjashdcn alscnjfhklcfn', '', 1, 'No', 0),
(15, '', 'kasdjhcfksljfn kasnjfhkljahk nasklcnjfklnj kasndcfnkjsajl klasnjclkasfnkl jnklascnjflksjnlk jnaslkcnj', '', 1, '', 0),
(16, '', 'lsknflsdfnj lanjsclñdfnñ nacslñdfnñl lñnaskcnjñl nlñasnkcñlfnk lñasjcnlñn lñnasclñfnñ ', '', 1, '', 0),
(17, '', 'lscnjsnfñl ñlaskjdcnñl ñlascknjfñl nlñakcfnlñ lnasdcfnñln ñlanscflñ ñlascnkjlñkn lñascnlñnk aslñdnv', '', 1, '', 0),
(18, '', 'laskdncfjlsñ lñskadjfncñlk nñlasdcnjlñk lñaksfjcnlñ ', '', 1, '', 0),
(19, '', 'lsacnkjlskñdvnj asldkfnjclsdfkj saldfcjlsdk nasln', '', 1, '', 0),
(20, '', 'lcnlskfnj lasdnclsdnaf', '', 1, '', 0),
(21, '', 'una obrea muy lorem lorem lorem lorem lorem lkjlkñjsdfjbsdkjf', '', 1, 'No', 1990),
(22, '', 'una obrea muy lorem lorem lorem lorem lorem lkjlkñjsdfjbsdkjf', '', 1, 'No', 1990),
(23, '', 'ljcanjlkasnjlvln llkasdjnlksacnñkasdfoui ñlaksdjcfnlñskadnjf lñasdncklfncd ñklasdncñklsndfcvn ', '', 1, '', 0),
(24, '', 'ksjahcnasjdhfvklsjdhfkl ksncnjslk klcasjhklfjashdcn alscnjfhklcfn', '', 1, 'No', 0),
(25, '', 'kasdjhcfksljfn kasnjfhkljahk nasklcnjfklnj kasndcfnkjsajl klasnjclkasfnkl jnklascnjflksjnlk jnaslkcnj', '', 1, '', 0),
(26, '', 'lsknflsdfnj lanjsclñdfnñ nacslñdfnñl lñnaskcnjñl nlñasnkcñlfnk lñasjcnlñn lñnasclñfnñ ', '', 1, '', 0),
(28, '', 'laskdncfjlsñ lñskadjfncñlk nñlasdcnjlñk lñaksfjcnlñ ', '', 1, '', 0),
(30, '', 'lcnlskfnj lasdnclsdnaf', '', 2, '', 0),
(31, '', 'una obrea muy lorem lorem lorem lorem lorem lkjlkñjsdfjbsdkjf', '', 1, 'No', 1990),
(32, '', 'una obrea muy lorem lorem lorem lorem lorem lkjlkñjsdfjbsdkjf', '', 1, 'No', 1990),
(34, '', 'ksjahcnasjdhfvklsjdhfkl ksncnjslk klcasjhklfjashdcn alscnjfhklcfn', 'artista.gif', 3, 'No', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id_slide`, `titulo`, `enlace`, `imagen`) VALUES
(1, 'El sol', 'https://www.facebook.com/', 'b5c1c-sol-alna-post.jpg'),
(2, 'Humo', 'http://foundation.zurb.com/docs/components/orbit.html', '07066-smokearmy.jpg'),
(3, 'Ejemplo', 'https://www.facebook.com/', 'e8169-10-(2).jpg'),
(4, 'Facebook', 'https://www.facebook.com/', '545d4-7511971692_0a2011850f_k.jpg'),
(5, 'Game boy', 'https://www.facebook.com/alex.spoon', 'b6cde-Gamelinkcablecomparison.jpg'),
(6, 'Gato', 'Gato', '1b926-12062012008.jpg'),
(7, 'PHPDay', 'php.com', 'a85ed-2012-06-14-11.10.24.jpg'),
(8, 'titulo', '', 'b29c8-7ceca37f294d941c91d74421bce44d7c-d36osfi.jpg');

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
