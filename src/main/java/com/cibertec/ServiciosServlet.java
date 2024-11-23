package com.cibertec;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;


@WebServlet(name = "ServiciosServlet", urlPatterns = "/servicios")
public class ServiciosServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String[]> servicios = Arrays.asList(
                new String[]{"Desarrollo Web", "web", "1500"},
                new String[]{"Desarrollo Web", "web", "1500"}
        );

        request.setAttribute("servicios", servicios);
        request.getRequestDispatcher("servicios.jsp").forward(request, response);
    }
}