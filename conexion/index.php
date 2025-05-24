<?php 
//conexion a la base de datos
/*string $hostname = null,127.0.0.1 la direccion donde se encuentra el servidor de mysql 
  string $username = null,
  string $password = null,
  string $database = null,
  int $port = null,
  string $socket = null*/
$conexion=mysqli_connect("localhost","root","","conexionphp");

//comprobar si la conexion es correcta

if (mysqli_connect_error()) {
    echo "la conexión a la base de datos ha fallado: ".mysqli_connect_error();
}else{
    echo "conexión hecha correctamente!! <br>";
}

//consulta para configurar la codificacion de caracteres
mysqli_query($conexion,"SET NAMES 'utf8'");

//consulta select desde php
$query = mysqli_query($conexion,"SELECT * FROM notas");

//var_dump($query);

//lo paso a un array asociativo
//$nota = mysqli_fetch_assoc($query);

//var_dump($nota);

while ($nota = mysqli_fetch_assoc($query)) {//por cada iteracion lo carga en nota
    //var_dump($nota);
    echo $nota["notas"]."<br>";
}

//insertar en la base de datos desde php
$sql="INSERT INTO notas VALUES(NULL , 'nota desde php','esto es una nota de php','green')";
$insert = mysqli_query($conexion,$sql);
 

if ($insert) {
    echo "datos insertados correctamente!!";
}else{
    echo "error".mysqli_error($conexion);
}















