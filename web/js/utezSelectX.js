/*!
 * UtezSelectX
 *
 * Copyright 2014 Adrián Cruz Hernández
 * 
 * docencia.acruz@gmail.com
 *
 * Date: 2014-julio-20
 */
(function($){
    $.fn.cargarSelectX = function(servlet) {          
      var select=this;            
      $.get(servlet, {
        paramName :  $(this).attr("id")
        }, function(jsonResponse) {                                                   
           select.find('option').remove();                               
           $.each(jsonResponse, function(key, value) {                      
             select.append('<option value="' + value.id + '">' + value.name + '</option>');                      
           });
        });
    };
})(jQuery);  
/* 14: $(this).attr("id")
  obtiene  el valor del id del select al que se le aplique la función cargarSelectX("Servlet")  
 el valor de id finalmente se manda como un parámetro llamado paramName al servlet */
/*18: se recorre cada resultado y se agrega (append) un option  al select */ 
 
