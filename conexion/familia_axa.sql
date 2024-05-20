-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2024 a las 18:19:26
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `familia_axa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_info_vacante`
--

CREATE TABLE `tbl_info_vacante` (
  `id_info` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hoja_vida` varchar(255) NOT NULL,
  `id_vacante` int(100) NOT NULL,
  `vacante` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_info_vacante`
--

INSERT INTO `tbl_info_vacante` (`id_info`, `nombres`, `apellidos`, `cedula`, `ciudad`, `direccion`, `celular`, `email`, `hoja_vida`, `id_vacante`, `vacante`) VALUES
(5, 'santiago ', 'vargas alvarez', '1020222656', 'Medellin', 'Cra 112c 34b 13', '3003046131', 'santivargasalvarez@gmail.com', 'hojas_vida/HOJA DE VIDA SANTIAGO.pdf', 14, 'Auxiliares en Fines Administrativos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_vacante`
--

CREATE TABLE `tbl_vacante` (
  `id_vacante` int(11) NOT NULL,
  `vacante` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `descripcion_vacante` varchar(500) NOT NULL,
  `experiencia` varchar(20) NOT NULL,
  `estado_vacante` varchar(50) NOT NULL DEFAULT 'Abierto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_vacante`
--

INSERT INTO `tbl_vacante` (`id_vacante`, `vacante`, `area`, `descripcion_vacante`, `experiencia`, `estado_vacante`) VALUES
(1, 'Gerentes en ventas', 'Ventas', 'El gerente de ventas lidera y supervisa las estrategias y operaciones de ventas para una empresa. Sus funciones incluyen dirigir a un equipo de ventas, establecer objetivos y estrategias, analizar el mercado y la competencia, gestionar relaciones con clientes clave, manejar presupuestos, realizar informes de desempeño, y capacitar y desarrollar al equipo de ventas. Su objetivo principal es incrementar las ventas y alcanzar las metas de ingresos de la organización.', '2 años', 'Abierto'),
(2, 'Vendedores', 'Ventas', 'Los vendedores son responsables de comercializar y vender productos o servicios a los clientes. Sus funciones incluyen identificar oportunidades de negocio, interactuar con clientes para entender sus necesidades, presentar productos, negociar precios, cerrar ventas y mantener relaciones continuas para asegurar la satisfacción del cliente. Su objetivo principal es impulsar las ventas y fomentar futuras relaciones comerciales.', '1 año', 'Abierto'),
(3, 'Administradores Financieros', 'Finanzas', 'Los administradores financieros supervisan la salud financiera de una empresa. Sus funciones incluyen analizar datos financieros, crear presupuestos, gestionar inversiones, monitorear el flujo de efectivo y asegurar el cumplimiento de regulaciones financieras. También participan en la toma de decisiones estratégicas relacionadas con las finanzas de la empresa y pueden presentar informes a la alta dirección. Su objetivo es optimizar el rendimiento financiero y la rentabilidad de la organización.', '1 año', 'Abierto'),
(4, 'Tesoreria', 'Finanzas', 'La tesorería se encarga de gestionar las finanzas de la empresa. Sus funciones incluyen supervisar el flujo de efectivo, administrar inversiones, controlar riesgos financieros, elaborar presupuestos y pronósticos, y mantener relaciones con bancos e instituciones financieras. Su objetivo es asegurar la salud financiera de la organización y optimizar los recursos económicos.', '2 años', 'Abierto'),
(5, 'Contadores públicos', 'Contabilidad', 'Los contadores públicos manejan la información financiera de una empresa o individuo. Sus funciones incluyen preparar estados financieros, realizar auditorías internas o externas, gestionar impuestos, y brindar asesoramiento financiero. Ayudan a garantizar la exactitud y el cumplimiento de normas contables y fiscales.', '1 año', 'Abierto'),
(6, 'Abogados', 'Legal', 'Los abogados representan y asesoran a individuos o empresas en asuntos legales. Sus funciones incluyen brindar asesoramiento legal, preparar documentos legales como contratos, representar a clientes en litigios, negociar acuerdos y asegurar el cumplimiento legal de las actividades del cliente.', '1 año', 'Abierto'),
(7, 'Diseñadores', 'Diseño', 'Los diseñadores crean soluciones visuales para comunicar ideas o mejorar productos y espacios. Sus funciones incluyen desarrollar conceptos, crear elementos visuales (como logos o ilustraciones), diseñar productos, trabajar con clientes para entender sus necesidades, y ajustar diseños según comentarios.', '2 años', 'Abierto'),
(8, 'Directores en Tecnología y Desarrollo', 'Tecnología', 'Los directores en tecnología y desarrollo lideran los equipos tecnológicos de una empresa. Sus funciones incluyen desarrollar estrategias tecnológicas, dirigir equipos de desarrollo, supervisar proyectos, impulsar la innovación, y asegurar la seguridad y el cumplimiento normativo. Buscan mejorar productos y procesos para el éxito de la empresa.', '2 años', 'Abierto'),
(9, 'Mensajeros', 'Logística', 'Los mensajeros transportan documentos y paquetes entre ubicaciones. Sus funciones incluyen recoger y entregar envíos puntualmente, planificar rutas eficientes, mantener registros de entregas y comunicar a los destinatarios sobre el estado de sus envíos.', '2 años', 'Abierto'),
(10, 'Colaboradores', 'Varios', 'Los colaboradores son miembros de un equipo que contribuyen a los objetivos de una empresa. Sus funciones incluyen trabajar en equipo, completar tareas asignadas, colaborar con otros departamentos, resolver problemas y comunicar información para mejorar el desempeño del equipo.', '2 años', 'Abierto'),
(11, 'Practicantes en modalidad pasantía', 'Varios', 'Los practicantes en modalidad pasantía son estudiantes o recién graduados que ganan experiencia laboral práctica. Sus funciones incluyen aprender en proyectos, apoyar a empleados, recibir capacitación y observar los procesos de la empresa.', '2 años', 'Abierto'),
(12, 'Atención al cliente', 'Servicio al cliente', 'La atención al cliente implica brindar asistencia y soporte a los clientes de una empresa. Esto incluye resolver problemas, proporcionar información sobre productos o servicios, gestionar quejas y mantener una comunicación efectiva para garantizar la satisfacción del cliente.', '6 meses', 'Abierto'),
(13, 'Auxiliares en Recursos Humanos', 'Recursos Humanos', 'Los auxiliares en recursos humanos apoyan en tareas administrativas y operativas del departamento. Sus funciones incluyen gestionar documentación, asistir en reclutamiento, colaborar en la integración de nuevos empleados, ayudar en la gestión de nóminas y responder a consultas de empleados.', '2 años', 'Abierto'),
(14, 'Auxiliares en Fines Administrativos', 'Administración', 'Los auxiliares en fines administrativos apoyan en tareas de oficina, como organizar documentos, gestionar correos y llamadas, asistir en la coordinación de reuniones, y manejar la entrada de datos en sistemas de la empresa.', '1 año', 'Abierto'),
(15, 'Auxiliares en Diseño', 'Diseño', 'Los auxiliares en diseño apoyan a los diseñadores en la creación de proyectos visuales. Sus funciones incluyen colaborar en la elaboración de diseños gráficos, preparar materiales, realizar ediciones y retoques, y organizar archivos de diseño.', '1 año', 'Abierto'),
(16, 'Desarrolladores Junior', 'Desarrollo de software', 'Los desarrolladores junior participan en proyectos de desarrollo de software. Sus funciones incluyen programar, probar y mantener código, colaborar con equipos de desarrollo, solucionar errores de código y mejorar habilidades técnicas.', '1 año', 'Abierto'),
(17, 'Asesores en Salud y Seguridad en el trabajo', 'Salud y Seguridad Laboral', 'Los asesores en salud y seguridad en el trabajo garantizan un entorno laboral seguro. Evalúan riesgos, aseguran el cumplimiento normativo, ofrecen capacitación y analizan incidentes para proponer mejoras.', '1 año', 'Abierto'),
(18, 'Gestor en Calidad', 'Calidad', 'Los gestores en calidad supervisan y mejoran los procesos de una empresa para garantizar la excelencia. Establecen estándares de calidad, monitorean procesos, analizan datos, ofrecen capacitación y realizan auditorías internas para asegurar el cumplimiento de normas de calidad.', '3 años', 'Abierto');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_info_vacante`
--
ALTER TABLE `tbl_info_vacante`
  ADD PRIMARY KEY (`id_info`);

--
-- Indices de la tabla `tbl_vacante`
--
ALTER TABLE `tbl_vacante`
  ADD PRIMARY KEY (`id_vacante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_info_vacante`
--
ALTER TABLE `tbl_info_vacante`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_vacante`
--
ALTER TABLE `tbl_vacante`
  MODIFY `id_vacante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
