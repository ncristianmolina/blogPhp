<?php
require_once 'includes/header.php'; ?>

        <div class="row justify-content-center">
           
          <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Inicio</a></li>
            <li class="breadcrumb-item"><a href="#">Desarollo Web</a></li>
            <li class="breadcrumb-item"><a href="#">Componente boostrap 5</a></li>
          </ol>
        </nav>
            
        <!--Slider-->
            
        <div class="slider col-lg-10 col-md-4 col-sm-7 col-xs-12 m-3">
          <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="img/picture1.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>First slide label</h5>
                  <p>Some representative placeholder content for the first slide.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="img/picture2.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Second slide label</h5>
                  <p>Some representative placeholder content for the second slide.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="img/picture3.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Third slide label</h5>
                  <p>Some representative placeholder content for the third slide.</p>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        </div>
           
        <h1>Ultimas entradas</h1>

        <div class="card-group m-4">

        <?php
		$entradas = conseguirEntradas($db, true);
		if(!empty($entradas)):
			while($entrada = mysqli_fetch_assoc($entradas))://lo hacemos asociativo
	    ?>
          <div class="card m-1">
            <img src="..." class="card-img-top" alt="...">
            
            <a href="entrada.php?id=<?=$entrada['id']?>"><?php //me lleva a ver el detalle de la entrada y poder hacer abm de ella ?>
            <div class="card-body">
              <h5 class="card-title"><?=$entrada['titulo']?></h5>
              
              <p class="card-text"><small class="text-dark"><?=substr($entrada['descripcion'], 0, 180)."..."?><?php // substr es una funcion q me limita los caracteres q yo quiera de 0 a 180?></small></p>

              <p class="card-text"><small class="text-muted"><?=$entrada['categoria'].' | '.$entrada['fecha']?></small></p>
            </div>
            </a>

          </div>
          
          <?php 
          endwhile;
          endif; 
          ?>
          
        </div>
        
        <div id="ver-todas">
          <a href="entradas.php">Ver todas las entradas</a>
        </div>
         
        </div>

<?php 
require_once 'includes/footer.php'; ?>