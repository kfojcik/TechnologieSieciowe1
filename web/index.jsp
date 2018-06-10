<%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 24.05.2018
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Sklep internetowy</title>
  </head>
  <body style="background-color:lightyellow;">
  <center>
  <h1>Sklep ze wszystkim</h1>
  <h2>Wpisz nazwy i ceny produktów, które chcesz kupić:</h2>
  <form method="post" action="/shop">
    <input type="text" name="produkt1" placeholder="nazwa produktu">
    <input type="text" name="cena1" placeholder="cena"><br>
    <input type="text" name="produkt2" placeholder="nazwa produktu">
    <input type="text" name="cena2" placeholder="cena"><br>
    <input type="text" name="produkt3" placeholder="nazwa produktu">
    <input type="text" name="cena3" placeholder="cena"><br>
    <input type="text" name="produkt4" placeholder="nazwa produktu">
    <input type="text" name="cena4" placeholder="cena"><br>
    <br>
    <input type="submit" value="Kup teraz">
  </form>
  </center>
  </body>
</html>
