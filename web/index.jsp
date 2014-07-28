<%-- 
    Document   : index
    Created on : 27/07/2014, 05:24:36 PM
    Author     : AdrianCruz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="js/jquery.min.js"></script> 
        <script type="text/javascript" src="js/utezSelectX.js"></script>
        <script type="text/javascript">
                          $(document).ready(function() {           
                            //--cargar select´s llamando al servlet Opciones*
                            $('#editorial').cargarSelectX("Opciones");
                            $('#area').cargarSelectX("Opciones");
                           });
        </script>     
<!--  filtro ***************************  -->        
<!-- ******* select(simple) autocomplete ******* -->
  <link rel="stylesheet" href="css/jquery-ui.css" />
  <script type="text/javascript" src="js/jquery-ui.js"></script>
  <link rel="stylesheet" href="css/selectAutocom.css" />
  <script type="text/javascript" src="js/selectAutocom.js"></script>
  <script type="text/javascript">                                 
        $(function() { 
            $( "#editorial" ).combobox(); 
            $( "#area" ).combobox(); 
        }); 
  </script> 
    </head>
    <body>
        <h1>Hello World!</h1>
        <!-- get para ver los nombres y valores de parámetros que se mandan -->
        <form action="#" method="get">
          <select id="editorial" name="editorial" required="">
            <option value="">Selecciona...</option>
          </select>     
            <br /><br /><br />
          <select id="area" name="area" required=""  >
                <option value="">Selecciona...</option>
          </select>            
        </form>
        <br /><br />
        <a href="selectMultiple.jsp"> ir a select múltiple</a>
    </body>
</html>
