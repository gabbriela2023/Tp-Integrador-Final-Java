<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />

    
    <title>Conf Bs As</title>
  </head>
  <body>
    <!--  menu -->
    <nav
      class="navbar navbar-expand-lg navbar-light px-5 pb-3"
      style="background-color: #3d4447"
    >
      
        <a class="navbar-brand text-white" href="#">Conf Bs As</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNavAltMarkup"
          aria-controls="navbarNavAltMarkup"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div
          class="collapse navbar-collapse justify-content-end"
          id="navbarNavAltMarkup"
        >
          <div class="navbar-nav">
            <a class="nav-link  text-white-50" aria-current="page" href="#"
              >La conferencia</a
            >
            <a class="nav-link text-white-50" href="#">Los oradores</a>
            <a class="nav-link text-white-50" href="#">El lugar y la fecha</a>
            <a class="nav-link active text-white">Conviértete en orador</a>
            <a class='nav-link text-success' href='/compratk'>Comprar tickets</a
            >
          </div>
        </div>
      </div>
    </nav>

   
    <br>
   
    <div class="container fluid d-flex justify-content-center ">
      
    <div class="card-group "  style="width: 46rem;">
      <div class="card border border-primary text-center mx-1">
        <div class="card-body">
          <p class="card-text h4">Estudiante</p>
          <p class="card-text">Tiene un descuento</p>
          <p class="card-text"> <strong>80%</strong></p>
          <p class="card-text text-muted"> <small> *presentar documentación</small></p>
        </div>
      </div>
      
      <div class="card border border-success text-center mx-1" >
        <div class="card-body">
          <p class="card-text h4">Trainee</p>
          <p class="card-text">Tiene un descuento</p>
          <p class="card-text"> <strong>50%</strong></p>
          <p class="card-text text-muted"><small> *presentar documentación</small></p>
        </div>
      </div>
      
      <div class="card border border-warning text-center mx-1" >
        <div class="card-body">
          <p class="card-text h4">Junior</p>
          <p class="card-text">Tiene un descuento</p>
          <p class="card-text"> <strong>15%</strong></p>
          <p class="card-text text-muted"><small> *presentar documentación</small></p>
        </div>
      </div>
    </div>
  </div>
   

    
    <div>
      <p class="text-uppercase pt-2 mb-0 text-center">
        <small>venta</small>
      </p>
      <p class="h3 text-uppercase text-center">valor de ticket $200</p>
    </div>
    


     
 
    <div class="container-fluid col-9">
        <form class="row g-3" id="compraEntradas" action="FrontController?accion=insert" method="post">
      
      <div class="col-md-6">
        <input type="text" class="form-control" id="inputNombre" placeholder="Nombre" name="nombre"  aria-label="Nombre" >
      </div>
      <div class="col-md-6">
        <input type="text" class="form-control" id="inputApellido" placeholder="Apellido" name="apellido"  aria-label="Apellido">
      </div>
      <div class="col-12">
        <input type="email" class="form-control" id="inputEmail" placeholder="Correo" name="mail" aria-label="Correo">
      </div>
      
      <div class="col-md-6">
        <label for="inputCantidad" class="form-label">Cantidad</label>
        <input type="number" class="form-control" name="cant" id="inputCantidad" placeholder="cantidad">
      </div>
      <div class="col-md-6">
        <label for="inputCategoria" class="form-label">Categoría</label>
        <select id="inputCategoria" name="categoria" class="form-select" >
          <option value="" selected>Seleccione...</option>
          <option value="0">Estudiante</option>
          <option value="1">Trainee</option>
          <option value="2">Junior</option>
          <option value="3">General</option>
        </select>
      </div>
  
      <div class="alert alert-primary " role="alert" >
        <p class="mb-0" id="importeTotal">Total a Pagar: $</p>
      </div>
      
      <div class="col">
          <button class="btn btn-success col-sm-12  botonEnviar" type="reset" id="btnBorrar">Borrar</button>
      </div>
      <div class="col">
          <a class="btn btn-success col-sm-12  botonEnviar" type="reset" id="btnVolver" href="FrontController?accion=volver">Volver</a>
      </div>
      <div class="col">
          <button class="btn btn-success col-sm-12 botonEnviar" type="submit" id="btnResumen" >Comprar</button>
        </div>
      </div>
    
    </form>
  </div>


   
   
    <br>

    <footer class="container-fluid pie text-white pt-4">
      <div class="container-fluid text-center">
        <div class="row">
          <div class="col">
            <p><small>Preguntas frecuentes</small></p>
          </div>
          <div class="col">
            <p><small>Contáctanos</small></p>
          </div>
          <div class="col">
            <p><small>Prensa</small></p>
          </div>
          <div class="col">
            <p><small>Conferencias</small></p>
          </div>
          <div class="col">
            <p><small>Términos y condiciones</small></p>
          </div>
          <div class="col">
            <p><small>Privacidad</small></p>
          </div>
          <div class="col">
            <p><small>Estudiantes</small></p>
          </div>
        </div>
      </div>
    </footer>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
  </body>
</html>