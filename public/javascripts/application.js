// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  var cuenta=0;
  $("form").live("submit", function() {
   if (cuenta == 0){
      cuenta++;
      return true;
    }else{
      alert("El formulario ya ha sido enviado,/n mensaje que evita el duplicado");
      return false;
    }
  });
});

