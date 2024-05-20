<?php
include("conexion/bd.php");

$vacantes = $conexion->prepare("SELECT * FROM tbl_vacante");
$vacantes->execute();
$lista_vacantes = $vacantes->fetchAll(PDO::FETCH_ASSOC);
?>


<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
    <title>Paykind</title>
    <link rel="stylesheet" href="./css/normalize.css">
    <link rel="stylesheet" href="./css/estilos.css">
</head>

<body>

    <header class="hero2">
        <nav class="nav container">
            <div class="nav__logo">
                <h2 class="nav__title">Familia AxA</h2>
            </div>

            <ul class="nav__link nav__link--menu">
                <li class="nav__items">
                    <a href="index.html" class="nav__links">Inicio</a>
                </li>
                <li class="nav__items">
                    <a href="quienes_somos.html" class="nav__links">¿Quienes somos?</a>
                </li>
                <li class="nav__items">
                    <a href="servicios.html" class="nav__links">Servicios</a>
                </li>
                <li class="nav__items">
                    <a href="trabaja_nosotros.php" class="nav__links">Trabaja aquí</a>
                </li>

                <img src="./images/close.svg" class="nav__close">
            </ul>

            <div class="nav__menu">
                <img src="./images/menu.svg" class="nav__img">
            </div>
        </nav>

        <section class="hero__container container">
            <h1 class="hero__title">¡TRABAJA CON NOSOTROS!</h1>
            <p class="hero__paragraph">
                Únete a nuestro equipo y sé parte del cambio
                <br><br>
                Buscamos mentes brillantes y corazones valientes para formar parte de nuestra familia en AxA. ¿Listo
                para marcar la diferencia? ¡Envíanos tu hoja de vida hoy mismo y comencemos a construir juntos el
                futuro!
                <br><br>
                ¡Descubre las emocionantes oportunidades que tenemos disponibles para ti! Explora nuestras diversas
                vacantes y encuentra la que más te apasione.
            </p>
        </section>
    </header>

    <h2 class="lista_titulo">Tareas laborales</h2>
    <ul class="lista">
        <li>Buscar proactivamente nuevas oportunidades de negocios, comunicación interna y superación laboral.</li>
        <li>Presentación personal y organizacional idónea de acuerdo a necesidad.</li>
        <li>Asistir a reuniones con clientes, organizaciones y demás que tengan que ver con temas incluyentes a la
            organización.</li>
        <li>Participar en nombre de la empresa en exposiciones o congresos.</li>
        <li>Tener conocimientos básicos de acuerdo al área solicitante (según necesidad interna de la organización).
        </li>
        <li>Cumplir y superar las expectativas de crecimiento rápido y sostenible de la organización.</li>
        <li>Cumplimiento de metas establecidas por la organización.</li>
    </ul>

    <p class="titulo_vacantes">Vacantes disponibles</p>
    <div class="container_vacantes">
        <?php foreach ($lista_vacantes as $vacantes) {
            if ($vacantes['estado_vacante'] == 'Abierto') {
        ?>
                <a href="info_vacante.php?id_vacante=<?php echo $vacantes['id_vacante'] ?>">
                    <div class="vacante">
                        <p class="area"> <?php echo $vacantes['area'] ?></p>
                        <h3><?php echo $vacantes['vacante'] ?></h3>
                        <p>
                            <?php
                            $contenido = $vacantes['descripcion_vacante'];
                            $limite_letras = 170;

                            if (strlen($contenido) > $limite_letras) {
                                $contenido_limitado = substr($contenido, 0, $limite_letras) . '...';
                                echo $contenido_limitado;
                            } else {
                                echo $contenido;
                            }
                            ?>
                        </p>
                        <br>
                        <p>Experiencia requerida: <?php echo $vacantes['experiencia'] ?></p>
                    </div>
                </a>
        <?php }
        } ?>
    </div>

    <script src="./js/menu.js"></script>
</body>

</html>