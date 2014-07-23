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
                      //$('<option>').val(value.id).text(value.name).appendTo(select);
                    });
            });
    };
})(jQuery);  