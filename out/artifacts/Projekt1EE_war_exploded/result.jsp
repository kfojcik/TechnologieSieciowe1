<%@ page import="pl.javastart.controller.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="pl.javastart.businesslogic.PriceCalculator" %><%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 24.05.2018
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body style="background-color:lightyellow;">
<center>
<ul> <font size="8">Podsumowanie Twoich zakupów:</font></ul>
<ul><font size="6">Zakupione produkty</font></ul>
    <%
        List<Product> products = (List<Product>)request.getAttribute("produkty");
    %>

    <table border="5"  style="background-color:cornflowerblue;" width="400" >
        <tr style="color:white;" align="center">
            <th>#</th>
            <th>Nazwa</th>
            <th>Cena</th>

        </tr>

    <%
        for (Product p : products){

    %>
        <tr style="..." allign="center">
           <th>
        <%
                   out.print(products.indexOf(p)+1);
        %>
           </th>

        <td>
        <%
                out.print(p.getName());
        %>
        </td>
        <td>
        <%
                out.print(p.getPrice()+"zł");
        %>
        </td>
        </tr>
        <%
            }
        %>
    </table> <br>

    <br>
    Suma: <% out.print((Double)request.getAttribute("cena")+" zł");%> <br>
    Średnia cena produktu: <% out.print((Double)request.getAttribute("cenaSrednia")+" zł");%>

</center>

</body>
</html>
