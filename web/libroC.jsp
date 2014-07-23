<%-- 
    Document   : libroC
    Created on : 19-jul-2014, 12:07:57
    Author     : AdrianCruz
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include  file="incluidos/metasBootstrap.jsp" %>           
        <link rel="stylesheet" type="text/css" href="b3.1.1/css/bootstrap.min.css">
                <!--<script type="text/javascript" src="js/jquery-1.11.1.js"></script>-->
		<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>                                          
        
        <%@include file="incluidos/tokenInput.jsp" %><!----- token-input ------->
        <script type="text/javascript">
        $(document).ready(function() {            
//----------------cargar select/input autores--------------------------------------------------------------------------->            
            //                      (servlet que provee de datos en json [{"name":"xyz","id":"nn"},... ,{"name":"xyzn","id":"nnm"}]
            $("#autores").tokenInput("ObtenerLista", {
                theme: "facebook",
                preventDuplicates: true,
                hintText: "Escriba un término de búsqueda"
            });
        });
        </script>    
<!--******* cargar select´s ******* -->	        
<script type="text/javascript" src="js/utezSelectX.js"></script>  		                
  <script type="text/javascript">
                    $(document).ready(function() {           
                      //--cargar select´s *******
                      $('#editorial').cargarSelectX("ObtenerLista");
                      $('#area').cargarSelectX("ObtenerLista");
                     });
  </script>
<!-- ******* select simple autocomplete ******* -->
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
      <h1>Nuevo registro</h1>
      <div class="container">
        <div class="jumbotron">
        <div>        
<form class="form-horizontal" action="Libro" method="post">
    <input type="hidden" name="action" value="create" /> <!-- para añadir el parametro action=create -->

<fieldset>
<!-- Form Name -->
<legend>Nuevo Libro</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="isbn">ISBN: </label>  
  <div class="col-md-4">
      <input id="isbn" name="isbn" type="text" placeholder="978 - 607 - 0000 - 00 - 0" class="form-control" required="" autofocus="">    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="titulo">Título:</label>  
  <div class="col-md-4">
  <input id="titulo" name="titulo" type="text" placeholder="nombre o título del libro" class="form-control" required="">    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="numpag">Núm. de páginas</label>  
  <div class="col-md-4">
      <input id="numpag" name="numpag" type="number" placeholder="cantidad de páginas del libro" class="form-control">      
  </div>
</div>
<!-- Search input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="autores">Autor(es):</label>
  <div class="col-md-4">
      <input id="autores" name="autores" type="text" placeholder="Busca y selecciona el o los autores" class="form-control" required="">    
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="editorial">Editorial:</label>
  <div class="col-md-4">      
      <select id="editorial" name="editorial" class="form-control" required="">
      <option value="">Selecciona...</option>
    </select>          
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="area">Área:</label>
  <div class="col-md-4">
      <select id="area" name="area" class="form-control" required=""  >
      <option value="">Selecciona...</option>
    </select>
  </div>
</div>

<!-- Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="activo">Registro disponible:</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="activo-0">
      <input type="radio" name="activo" id="activo-0" value="1" checked="checked">
      Si
    </label>
	</div>
  <div class="radio">
    <label for="activo-1">
      <input type="radio" name="activo" id="activo-1" value="0">
      No
    </label>
	</div>
  </div>
</div>



<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="nuevo"></label>
  <div class="col-md-4">
      <button type="submit" id="nuevo" name="nuevo" class="btn btn-primary">Agregar libro</button>
  </div>
</div>

</fieldset>
</form>
                    
    </div>            
        </div>
       </div>
                    
    </body>
</html>
