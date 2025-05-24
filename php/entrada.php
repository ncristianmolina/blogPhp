<?php require_once 'includes/conexion.php'; ?>
<?php require_once 'includes/helpers.php'; ?>
<?php
	$entrada_actual = conseguirEntrada($db, $_GET['id']);

	if(!isset($entrada_actual['id'])){//me patea si no ay nada
		header("Location: index.php");
	}
?>
<?php require_once 'includes/header.php'; ?>
<?php //require_once 'includes/lateral.php'; ?>

<nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                      <li class="breadcrumb-item">
                          <a href="#" >Inicio</a>
                      </li>
                      <li class="breadcrumb-item">
                          <a href="#">Entrada</a>
                      </li>
                      <li class="breadcrumb-item">
                          <a href="#"><?=$entrada_actual['titulo']?></a>
                      </li>
                  </ol>
              </nav>

<!-- CAJA PRINCIPAL --><?php //gracias a la query muestro esto ?>
<div class="card-group m-4">
<div class="card m-1">
            <img src="..." class="card-img-top" alt="...">
<div class="card-body">
	<h1 class="card-title"><?=$entrada_actual['titulo']?></h1>
	<h2>
	<a class="text-success" href="categoria.php?id=<?=$entrada_actual['categoria_id']?>">
		<?=$entrada_actual['categoria']?>
	</a>
	</h2>
	<h4><?=$entrada_actual['fecha']?> | <?=$entrada_actual['usuario'] ?></h4>
	<p class="card-text"><small class="text-dark">
		<?=$entrada_actual['descripcion']?></small>
	</p>

	</div>
	<?php if(isset($_SESSION["usuario"]) && $_SESSION['usuario']['id'] == $entrada_actual['usuario_id']): //si estoy logeado y soy yo igual al usuario actual?>
		<br/>
		<a href="editar-entrada.php?id=<?=$entrada_actual['id']?>" type="button" class="btn btn-outline-dark">Editar entrada</a>
		<a href="borrar-entrada.php?id=<?=$entrada_actual['id']?>" type="button" class="btn btn-outline-dark">Eliminar entrada</a>
	<?php endif; ?>
	
	</div>
</div> <!--fin principal-->

<?php require_once 'includes/footer.php'; ?>
