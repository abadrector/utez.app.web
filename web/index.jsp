<%-- 
    Document   : index
    Created on : 18-jul-2014, 15:08:27
    Author     : AdrianCruz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include  file="incluidos/metasBootstrap.jsp" %>
        <link rel="stylesheet" type="text/css" href="b3.1.1/css/bootstrap.min.css">
    </head>
    <body>
        <h1>Hello World!</h1>
        <a href="Libro?action=read" class="btn btn-primary btn-lg">consultar libros
            <span class="glyphicon glyphicon-list"></span></a><br>        
            <hr>
         <form class="form-inline" action="Libro" method="post" >
             <input type="hidden" name="action" value="add" /> <!-- action=add  para nuevo registro-->
            <button class="btn-primary" type="submit">
                Agregar un libro<span class="glyphicon glyphicon-book"></span>
            </button>            
        </form>            
    </body>
</html>
