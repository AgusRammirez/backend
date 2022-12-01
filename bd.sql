-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-12-2022 a las 22:19:35
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transportediplomatura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  `subtitulo` text NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `img_id`, `subtitulo`, `descripcion`) VALUES
(1, 'Cultivan plantas en tierra procedente de la Luna.', 'ywkubpxohcvltyamd7i8', 'Empleando las muestras de suelo recogidas en las misiones Apolo, un equipo ha demostrado que las plántulas germinan en el regolito lunar, pero carecen de los elementos necesarios para desarrollarse.', 'Al laboratorio de Robert Ferl llegó una caja de UPS sin decorar que contenía doce gramos de material lunar. Ferl, horticultor de la Universidad de Florida, había estado esperado ese momento durante más de una década. La pequeña caja, con matasellos de la NASA, contenía algunas de las últimas muestras sin abrir de polvo lunar, o regolito, recogidas por los astronautas de las misiones Apolo 11, 12 y 17. \r\nEl experimento recibió luz verde en el marco de un reciente auge de la investigación lunar impulsado por el programa Artemis de la NASA, que pretende enviar seres humanos a nuestro satélite a finales de la presente década. La idea es explorar la Luna de una forma más sostenible mediante la creación de unos puestos avanzados superficiales destinados a estancias de mayor duración, así como una estación espacial llamada Gateway que orbitará la Luna —según la agencia espacial, ambos ensayos serán cruciales para eventuales viajes astronáuticos a Marte—. '),
(3, 'Las plantas carnívoras también se pueden anestesiar.', 'aklnbaqrbmlplkbwyv5t', 'La anestesia tiene un efecto similar en la venus atrapamoscas que en los humanos. La clave estriba en un receptor crucial para la transmisión de los estímulos sensoriales.', 'La venus atrapamoscas (Dionaea muscipula) también puede ser anestesiada con éter. Según informa un equipo dirigido por Sönke Scherzer, de la Universidad de Wurzburgo, en Scientific Reports, las hojas de captura de la planta carnívora dejan de reaccionar a los estímulos táctiles cuando se les aplica el gas anestésico. Al parecer, la razón estriba en que la anestesia impide la transmisión de los estímulos nerviosos. Si se toca un pelo sensitivo de la planta «anestesiada», indican los científicos, se sigue produciendo una señal química en el sensor táctil, pero ya no se transmite. La causa es la inhibición de un receptor del glutamato. El equipo descubrió que sin éter se producía un estímulo eléctrico (el potencial de acción) en las células vecinas cuando se añadía glutamato. Bajo anestesia, este proceso quedaba bloqueado.\r\nEl hallazgo revela que la anestesia en las plantas funciona de manera similar que en los humanos, puesto que el glutamato también interviene en la transmisión de estímulos en las células nerviosas humanas y sus receptores desempeñan un papel en el efecto de la anestesia. La venus atrapamoscas comparte otra semejanza con las personas en este proceso: tampoco recuerda lo que ocurrió durante la anestesia. En circunstancias normales, la estimulación táctil de sus pelos sensitivos le sirve para evitar un gasto de energía innecesario (por querer atrapar algo que no es una suculenta presa, por ejemplo) o que digiera un objeto no comestible, muestra otro estudio. Los estímulos táctiles bajo anestesia no entran en este cálculo.\r\nHacia una anestesia más segura\r\nDetrás de la investigación se esconde una incógnita aún sin resolver. '),
(13, 'prueba1', 'nirpe0jbv61s1r6ymuk8', 'prueba1', 'prueba1'),
(14, 'prueba2', 'dzn8m9riy4aknudmkwek', 'prueba2', 'prueba2'),
(10, 'Las ventas al exterior de planta y flor mantienen la evolución positiva con un 7% más hasta septiembre', 'iqnlhpzgbkgapnnd54gn', 'La Comunidad Valenciana encabeza las ventas al exterior con 144,5 millones, seguida de Andalucía con 140 millones y Cataluña con 83 millones de euros', 'La exportación española de planta viva y flor cortada de enero a septiembre de 2022 se ha situado en 486 millones de euros, lo que supone un incremento del 7% respecto al mismo periodo de 2021.\r\nLa planta viva sigue representando el grueso de la exportación española, con 383 millones de euros de enero a septiembre de 2022, un 7% más que en el mismo periodo del año anterior, seguida a gran distancia de la flor cortada, con 48 millones de euros (+2%), el follaje, con 27 millones de euros (+12%) y los bulbos, con 8 millones de euros, la misma cantidad que en el periodo anterior.\r\nLa Comunidad Valenciana encabeza las ventas al exterior del sector de planta viva y flor cortada, con 144,5 millones de euros, lo que supone un crecimiento del 8% respecto al año anterior, seguida muy de cerca por Andalucía, con 140 millones de euros (+11%) y a más distancia, ocupa el tercer lugar, Cataluña, con una exportación de 83 millones de euros (+3%).\r\nOtras comunidades exportadoras son la Región de Murcia, con 25,3 millones de euros (+2%), Castilla y León, con 25 millones de euros (+5%) y Galicia, con 11 millones de euros +8%), según datos del Departamento de Aduanas e Impuestos Especiales de la Agencia Tributaria, procesados por FEPEX.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Agustina', '0c74b7f78409a4022a2c4c5a5ca3ee19'),
(2, 'Wendy', '48ec66321bc042df39a9aeefd93aa18e');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
