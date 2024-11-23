<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cotización</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1>Resumen de Cotización</h1>
        <ul class="list-group">
            <% List<String> serviciosCotizados = (List<String>) request.getAttribute("serviciosCotizados"); %>
            <% for (String servicio : serviciosCotizados) { %>
                <li class="list-group-item"><%= servicio %></li>
            <% } %>
        </ul>
        <h3 class="mt-4">Total: S/ <%= request.getAttribute("total") %></h3>
        <a href="servicios" class="btn btn-secondary mt-3">Volver</a>
    </div>
</body>
</html>