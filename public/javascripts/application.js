// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
  $(function() {
  	$('.datepicker').datepicker({
  	changeMonth: true,
    changeYear: true,
    yearRange: '1900:2015'      
  });

    $('.datepicker').datepicker({dateFormat: 'dd-MM-yy'});
});