<?php
include 'conexion.php';

if(mysqli_connect_error()){
    echo "la conexion a la base de datos ha fallado". mysqli_connect_error();
}else{
    echo "conexion hecha correctamente!! <br>";
}