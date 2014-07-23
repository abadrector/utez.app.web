<%-- 
    Document   : libroR
    Created on : 19-jul-2014, 10:07:57
    Author     : AdrianCruz
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>                
        <%@include  file="incluidos/metasBootstrap.jsp" %>	
        <link rel="stylesheet" type="text/css" href="b3.1.1/css/bootstrap.min.css">
        <%@include  file="incluidos/dataTables.jsp" %>		                                
        <script type="text/javascript" charset="utf-8">			                        
         $(document).ready( function() {
              $('#tabla1').dataTable(
                           <%@include  file="incluidos/UtezDataTableAlEspanol" %>
                           );
         } );
        </script>                  
    </head>
    <body>
        <h1>Listado de libros</h1>        
      <div class="container">
        <div class="jumbotron">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <table border="1" id="tabla1" class="table table-responsive table-striped table-bordered">
            <thead>
            <tr>
                <!-- oculto en celular(xs) y visible en tablet(sm), lap(md) y pantalla grande (lg)-->
                <th class="hidden-xs visible-sm visible-md visible-lg">
                     ID</th>
                <th> ISBN</th>
                <th> TITULO</th>
                <th class="hidden-xs visible-sm visible-md visible-lg"> 
                     NUM_PAG</th>
                <th> EDITORIAL</th>
                <th> AREA</th>
                <th class="hidden-xs visible-sm visible-md visible-lg">  
                     ACTIVO</th>
                <th> AUTOR(ES)</th>
            </tr>         
            </thead>
            <!-- cuerpo de la tabla -->
            <tbody>
                <c:forEach var="elemento" items="${atributoLibros}">
                <tr>
                    <td class="hidden-xs visible-sm visible-md visible-lg">
                        <c:out value="${elemento.id}" /></td>
                    <td><c:out value="${elemento.isbn}" /></td>
                    <td><c:out value="${elemento.titulo}" /></td>
                    <td class="hidden-xs visible-sm visible-md visible-lg">
                        <c:out value="${elemento.num_pag}" /></td>
                    <td><c:out value="${elemento.editorial.nombre}" /></td>
                    <td><c:out value="${elemento.area.descripcion}" /></td>
                    <td class="hidden-xs visible-sm visible-md visible-lg"> 
                        <c:out value="${elemento.activo}" /></td>
                    <td>
                        <!-- elemento.autor es una lista de elementos AutorBean-->                        
                        <c:forEach var="aut" items="${elemento.autor}" begin="0" end="0"> 
                            <c:out value="${aut.nombre}" /> <!-- imprime sólo el primer elemento (indice 0)-->
                        </c:forEach>
                        <c:forEach var="aut" items="${elemento.autor}" begin="1"> 
                            &amp;&nbsp;<c:out value="${aut.nombre}" /> <!-- imprime del 2do elemento (indice 1)-->
                        </c:forEach>
                    </td>
                </tr>
            </c:forEach>
           </tbody>
            <!-- fin del cuerpo de la tabla --> 
        </table>            
        </div>
         <form class="form-inline" action="Libro" method="post" >
             <input type="hidden" name="action" value="add" /> <!-- action=add  para nuevo registro-->
            <button class="btn-primary" type="submit">
                Agregar un libro<span class="glyphicon glyphicon-book"></span>
            </button>            
        </form>
        </div>
       </div>
        
    </body>
</html>
