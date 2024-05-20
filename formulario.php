<?php

include("conexion/bd.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Recoger los datos del formulario
    $nombres = isset($_POST["nombres"]) ? $_POST["nombres"] : "";
    $apellidos = isset($_POST["apellidos"]) ? $_POST["apellidos"] : "";
    $cedula = isset($_POST["cedula"]) ? $_POST["cedula"] : "";
    $ciudad = isset($_POST["ciudad"]) ? $_POST["ciudad"] : "";
    $direccion = isset($_POST["direccion"]) ? $_POST["direccion"] : "";
    $celular = isset($_POST["celular"]) ? $_POST["celular"] : "";
    $email = isset($_POST["email"]) ? $_POST["email"] : "";
    $id_vacante = isset($_POST["id_vacante"]) ? $_POST["id_vacante"] : "";
    $vacante = isset($_POST["vacante"]) ? $_POST["vacante"] : "";

    // Definir la ruta de destino para la carpeta 'hojas_vida'
    $ruta_destino = 'hojas_vida/';

    // Comprobar si el archivo 'hoja_vida' fue cargado correctamente
    if (isset($_FILES["hoja_vida"]) && $_FILES["hoja_vida"]["error"] == UPLOAD_ERR_OK) {
        // Obtener el nombre original del archivo
        $nombre_archivo = $_FILES["hoja_vida"]["name"];

        // Generar una ruta de archivo completa para el archivo de destino
        $ruta_archivo = $ruta_destino . basename($nombre_archivo);

        // Mover el archivo desde su ubicación temporal a la carpeta de destino
        if (move_uploaded_file($_FILES["hoja_vida"]["tmp_name"], $ruta_archivo)) {
            // El archivo se movió con éxito, ahora puedes continuar con la inserción de datos

            // Preparar la inserción de los datos
            $sentencia = $conexion->prepare("INSERT INTO tbl_info_vacante (id_info, nombres, apellidos, cedula, ciudad, direccion, celular, email, hoja_vida, id_vacante, vacante)
                VALUES (null, :nombres, :apellidos, :cedula, :ciudad, :direccion, :celular, :email, :hoja_vida, :id_vacante, :vacante)");

            // Vincular los valores a la consulta
            $sentencia->bindParam(":nombres", $nombres);
            $sentencia->bindParam(":apellidos", $apellidos);
            $sentencia->bindParam(":cedula", $cedula);
            $sentencia->bindParam(":ciudad", $ciudad);
            $sentencia->bindParam(":direccion", $direccion);
            $sentencia->bindParam(":celular", $celular);
            $sentencia->bindParam(":email", $email);
            $sentencia->bindParam(":id_vacante", $id_vacante);
            $sentencia->bindParam(":vacante", $vacante);
            $sentencia->bindParam(":hoja_vida", $ruta_archivo); // Vincular la ruta del archivo

            // Ejecutar la consulta
            $sentencia->execute();

            // Redirigir a otra página
            header("Location: trabaja_nosotros.php");
            exit;
        } else {
            // Si hubo un error al mover el archivo, muestra un mensaje de error
            echo "Error al mover el archivo a la carpeta de destino.";
        }
    } else {
        // Si no se cargó correctamente el archivo, muestra un mensaje de error
        echo "Error al cargar el archivo 'hoja_vida'.";
    }
}
