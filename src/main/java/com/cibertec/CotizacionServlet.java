package com.cibertec;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "CotizacionServlet", urlPatterns = "/cotizacion")
public class CotizacionServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] serviciosSeleccionados = request.getParameterValues("servicios");
        List<String[]> servicios = Arrays.asList(
                new String[]{"Desarrollo Web", "web", "1500"},
                new String[]{"Desarrollo Móvil", "movil", "2000"},
                new String[]{"Consultoría Tecnológica", "consultoria", "1000"}
        );

        int total = 0;
        List<String> serviciosCotizados = new ArrayList<>();
        if (serviciosSeleccionados != null) {
            for (String servicioSeleccionado : serviciosSeleccionados) {
                for (String[] servicio : servicios) {
                    if (servicio[1].equals(servicioSeleccionado)) {
                        serviciosCotizados.add(servicio[0]);
                        total += Integer.parseInt(servicio[2]);
                    }
                }
            }
        }

        request.setAttribute("serviciosCotizados", serviciosCotizados);
        request.setAttribute("total", total);
        request.getRequestDispatcher("cotizacion.jsp").forward(request, response);
    }
}
