<%-- 
    Document   : selectMultiple
    Created on : 27/07/2014, 07:53:37 PM
    Author     : AdrianCruz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select múltiple</title>
        <script type="text/javascript" src="js/jquery.min.js"></script> 
        <!-- select multiple en un input *************** -->
        <script type="text/javascript" src="js/jquery.tokeninput.js"></script>
        <link rel="stylesheet" href="css/token-input.css" type="text/css" />
        <link rel="stylesheet" href="css/token-input-facebook.css" type="text/css" />        
        <script type="text/javascript">
        $(document).ready(function() {            
        //----------cargar select/input autores--------------------------------------------------------------------------->            
            //                      (servlet que provee de datos en json [{"name":"xyz","id":"nn"},... ,{"name":"xyzn","id":"nnm"}]
            $("#autores").tokenInput("Opciones", {
                theme: "facebook",
                preventDuplicates: true,
                hintText: "Escriba un término de búsqueda"
            });
        });
        </script>            
    </head>
    <body>        
        <input id="autores" name="autores" type="text"  required="">    
    </body>
</html>
