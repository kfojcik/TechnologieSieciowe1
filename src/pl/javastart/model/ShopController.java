package pl.javastart.model;


import pl.javastart.businesslogic.PriceCalculator;
import pl.javastart.controller.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("/shop")
public class ShopController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Product> products = new ArrayList<>();

        try {

        String product1 = request.getParameter("produkt1");
        String price1 = request.getParameter("cena1");
        if (!product1.isEmpty() && !price1.isEmpty())
            products.add(new Product(product1,Double.parseDouble(price1)));

        String product2 = request.getParameter("produkt2");
        String price2 = request.getParameter("cena2");
        if (!product2.isEmpty() && !price2.isEmpty())
            products.add(new Product(product2,Double.parseDouble(price2)));

        String product3 = request.getParameter("produkt3");
        String price3 = request.getParameter("cena3");
        if (!product3.isEmpty() && !price3.isEmpty())
            products.add(new Product(product3,Double.parseDouble(price3)));

        String product4 = request.getParameter("produkt4");
        String price4 = request.getParameter("cena4");
        if (!product4.isEmpty() && !price4.isEmpty())
            products.add(new Product(product4,Double.parseDouble(price4)));


        if (!products.isEmpty()) {
            request.setAttribute("produkty", products);
            request.setAttribute("cena", PriceCalculator.calculatePrice(products));
            request.setAttribute("cenaSrednia", PriceCalculator.calculateMeanPrice(products));
            request.getRequestDispatcher("result.jsp").forward(request, response);
        }
        else request.getRequestDispatcher("empty.jsp").forward(request,response);

        }catch (NumberFormatException e){
            request.getRequestDispatcher("empty.jsp").forward(request,response);
       }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}