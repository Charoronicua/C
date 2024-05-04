<!-- Primer contenedor con título y subtítulo -->
<link rel="stylesheet" type="text/css" href="css/home2.css">
<div class="container is-fluid">
    <h1 class="title">Página de inicio</h1>
    <h2 class="subtitle">¡Bienvenido <?php echo $_SESSION['nombre']." ".$_SESSION['apellido']; ?>!</h2>
</div>

<!-- Segundo contenedor con título y párrafo -->
<div class="container has-text-centered my-container">
    <h1 class="title">AGSIMEX</h1>
    <p>
	AGSIMEX es una empresa líder en el sector de montacargas y soluciones de manejo de materiales. 
	Con varios años de experiencia en la industria, nos hemos consolidado como un socio confiable para empresas de diversos sectores, 
	desde almacenes y centros de distribución hasta instalaciones industriales y comerciales.
    </p>
	<img src="img/carga.jpeg">

</div>

