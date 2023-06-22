<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Methods: HEAD, GET, POST, PUT, PATCH, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method,Access-Control-Request-Headers, Authorization");
header('Content-Type: application/json');
$method = $_SERVER['REQUEST_METHOD'];
if ($method == "OPTIONS") {
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method,Access-Control-Request-Headers, Authorization");
    header("HTTP/1.1 200 OK");
    die();
}
require "config.php";

mysqli_set_charset($con, "utf8");

$sql = "SELECT `ID`, `CODIGO`, `NOMBRE`, `SEXO` FROM `persona` WHERE 1";
$clientes = array();

if (!$result = mysqli_query($con, $sql)) die();
while ($row = $result->fetch_assoc()) {
    array_push($clientes, $row);
}

$close = mysqli_close($con)
    or die("Ha sucedido un error inexperado en la desconexion de la base de datos");

//Creamos el JSON

$json_string = json_encode($clientes);
echo $json_string;
