<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Servicios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1>Servicios Disponibles</h1>
        <form action="cotizacion" method="POST">
            <div class="row">
                <% List<String[]> servicios = (List<String[]>) request.getAttribute("servicios"); %>
                <% for (String[] servicio : servicios) { %>
                    <div class="col-md-4">
                        <div class="card mb-3">
                            <div class="card-body">
                                <h5 class="card-title"><%= servicio[0] %></h5>
                                <p class="card-text">Precio: S/ <%= servicio[2] %></p>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="servicios" value="<%= servicio[1] %>">
                                    <label class="form-check-label">Seleccionar</label>
                                </div>
                            </div>
                        </div>
                    </div>
                <% } %>
            </div>
            <button type="submit" class="btn btn-primary">Cotizar</button>
        </form>
    </div>
</body>
</html>