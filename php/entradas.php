<?php require_once 'includes/header.php'; ?>
		
<?php //require_once 'includes/lateral.php'; ?>
		
<nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                      <li class="breadcrumb-item">
                          <a href="#" >Inicio</a>
                      </li>
                      <li class="breadcrumb-item">
                          <a href="#">Entradas</a>
                      </li>
                  </ol>
              </nav>
<!-- CAJA PRINCIPAL -->

	<h1>Todas las entradas</h1>
	<div class="row">
	<?php 
		$entradas = conseguirEntradas($db);
		if(!empty($entradas)):
			while($entrada = mysqli_fetch_assoc($entradas)):
	?>
  <div class="col-sm-6">
    <div class="card m-4">
    <a href="entrada.php?id=<?=$entrada['id']?>"><?php //me lleva a ver el detalle de la entrada y poder hacer abm de ella ?>
            <div class="card-body">
              <h5 class="card-title"><?=$entrada['titulo']?></h5>
              
              <p class="card-text"><small class="text-dark"><?=substr($entrada['descripcion'], 0, 180)."..."?><?php // substr es una funcion q me limita los caracteres q yo quiera de 0 a 180?></small></p>

              <p class="card-text"><small class="text-muted"><?=$entrada['categoria'].' | '.$entrada['fecha']?></small></p>
            </div>
			</a>
    </div>
  </div>

  <?php
			endwhile;
		endif;?>
  
</div>
	

		
<?php require_once 'includes/footer.php'; ?>