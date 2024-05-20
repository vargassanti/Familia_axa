<?php 
$servidor="localhost";
$baseDeDatos="familia_axa";
$usuario="root";
$contraseña="";

try{
    $conexion= new PDO("mysql:host=$servidor;dbname=$baseDeDatos", $usuario, $contraseña);
}catch(Exception $ex){
    echo $ex->getMessage();
}

?>