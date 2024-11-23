<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bienvenido al Sistema</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Barra de Navegación -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="home">Sistema de Reservas</a>
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="servicios">Servicios</a></li>
        </ul>
    </nav>

    <!-- Contenido Principal -->
    <div class="container">
        <!-- Banner -->
        <div class="jumbotron text-center bg-primary text-white rounded">
            <h1 class="display-4">¡Bienvenido al Sistema de Reservas!</h1>
            <p class="lead">Administra tus servicios y realiza reservas de manera rápida y sencilla.</p>
            <a href="servicios" class="btn btn-light btn-lg">Ver Servicios</a>
        </div>

        <!-- Características del Sistema -->
        <div class="row">
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Servicios Dinámicos</h5>
                        <p class="card-text">Explora nuestra lista de servicios disponibles y selecciona los que necesitas.</p>
                        <a href="servicios" class="btn btn-primary">Explorar</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Reservas Fáciles</h5>
                        <p class="card-text">Realiza reservas seleccionando tus servicios favoritos con fechas específicas.</p>
                        <a href="reserva.jsp" class="btn btn-primary">Reservar</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Resumen de Cotización</h5>
                        <p class="card-text">Calcula el costo total de tus servicios seleccionados en segundos.</p>
                        <a href="cotizacion" class="btn btn-primary">Cotizar</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>