// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  var cuenta=0;
  $("#cliente_submit").live("click", function() {
   if (cuenta == 0){
      cuenta++;
      return true;
    }else{
      alert("Formulario ya enviado");
      return false;
    }
  });
});

