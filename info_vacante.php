<?php

include("conexion/bd.php");

if (isset($_GET['id_vacante'])) {
    $id_vacante = (isset($_GET['id_vacante'])) ? $_GET['id_vacante'] : "";
}

$info_v = $conexion->prepare("SELECT * FROM tbl_vacante WHERE id_vacante =:id_vacante");
$info_v->bindParam(":id_vacante", $id_vacante);
$info_v->execute();
$informacion_vacante = $info_v->fetchAll(PDO::FETCH_ASSOC);

foreach ($informacion_vacante as $vacante_i) {
    $id_vacante = $vacante_i['id_vacante'];
    $vacante = $vacante_i['vacante'];
    $area = $vacante_i['area'];
    $descripcion_vacante = $vacante_i['descripcion_vacante'];
    $experiencia = $vacante_i['experiencia'];
    $estado_vacante = $vacante_i['estado_vacante'];
}

?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
    <title>Formulario de Postulación</title>
    <link rel="stylesheet" href="./css/normalize.css">
    <link rel="stylesheet" href="./css/estilos.css">
</head>

<body>
    <div class="container_boton">
        <a class="boton_cancelar" href="trabaja_nosotros.php">
            Cancelar
        </a>
    </div>
    <main class="estilos_main">
        <div class="info_vacante">
            <p class="titulo_area">Area: <?php echo $area; ?></p>
            <p class="titulo_vacante"><strong>Vacante:</strong> <?php echo $vacante; ?></p>
            <p class="descripcion_vacante"><?php echo $descripcion_vacante; ?></p>
        </div>

        <div class="formulario_vacante">
            <form class="formulario" action="formulario.php" method="post" enctype="multipart/form-data">
                <div>
                    <label for="nombres">Nombres completos:</label>
                    <input type="text" id="nombres" name="nombres" required>
                </div>
                <input type="text" id="id_vacante" name="id_vacante" value="<?php echo $id_vacante ?>" hidden>
                <input type="text" id="vacante" name="vacante" value="<?php echo $vacante ?>" hidden>
                <div>
                    <label for="apellidos">Apellidos completos:</label>
                    <input type="text" id="apellidos" name="apellidos" required>
                </div>

                <div>
                    <label for="cedula">Cédula:</label>
                    <input type="text" id="cedula" name="cedula" required>
                </div>

                <div>
                    <label for="ciudad">Ciudad:</label>
                    <input type="text" id="ciudad" name="ciudad" required>
                </div>

                <div>
                    <label for="direccion">Direccion:</label>
                    <input type="text" id="direccion" name="direccion" required>
                </div>

                <div>
                    <label for="email">Correo electrónico:</label>
                    <input type="email" id="email" name="email" required>
                </div>

                <div>
                    <label for="celular">Celular:</label>
                    <input type="text" id="celular" name="celular" required>
                </div>

                <div>
                    <label for="hoja_de_vida">Hoja de vida:</label>
                    <input type="file" id="hoja_vida" name="hoja_vida" accept=".pdf,.doc,.docx" required>
                </div>

                <input type="submit" value="Enviar">
            </form>
        </div>
    </main>

</body>

</html>