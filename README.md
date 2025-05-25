Blog PHP + MySQL

Proyecto personal de desarrollo backend: un sistema de blog funcional realizado desde cero utilizando PHP (procedural) y MySQL.

🚀 Características principales

Registro e inicio de sesión de usuarios

Autenticación mediante sesiones PHP nativas

CRUD de entradas de blog (crear, editar, eliminar, ver)

Clasificación de entradas por categorías

Buscador de contenido por texto

Edición de datos del perfil del usuario

🔐 Seguridad

Contraseñas cifradas con password_hash() usando BCRYPT

Control de acceso a funcionalidades según sesión activa

Pendiente de mejora: consultas preparadas para prevenir SQL Injection

🧠 Tecnologías utilizadas

PHP (mysqli procedural)

MySQL

HTML y CSS

PHP nativo para sesiones, validaciones y estructura

📦 Estructura del proyecto

/php
├── index.php
├── login.php
├── registro.php
├── cerrar.php
├── mis-datos.php
├── actualizar-usuario.php
├── crear-entradas.php
├── guardar-entrada.php
├── editar-entrada.php
├── borrar-entrada.php
├── entrada.php
├── entradas.php
├── crear-categoria.php
├── guardar-categoria.php
├── categoria.php
└── buscar.php

🎯 Objetivo del proyecto

Este proyecto fue realizado con fines de aprendizaje, como práctica de desarrollo backend puro, estructura de base de datos, autenticación de usuarios y validación de formularios sin frameworks.

🛠 Pendientes y mejoras futuras

Implementar consultas preparadas (mysqli_prepare o PDO)

Aplicar el patrón MVC

Mejorar la interfaz visual con Bootstrap u otro framework frontend

Agregar funcionalidades como paginación, comentarios y roles de usuario

📌 Autor

Desarrollado por Cristian – Proyecto personal orientado a seguir creciendo como desarrollador backend.
