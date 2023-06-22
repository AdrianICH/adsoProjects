<?php

//session_start();
$host = "localhost"; /* equipo */
$user = "root"; /* usuario */
$password = ""; /* clave */
$dbname = "general"; /* base de datos */

$con = mysqli_connect($host, $user, $password,$dbname);

if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
// echo "Conexion Exitosa";

?>
