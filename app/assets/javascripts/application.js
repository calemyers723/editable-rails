// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery-2.0.3.min
//= require jquery_ujs
//= require bootstrap
//= require bootstrap-editable
//= require bootstrap-editable-rails
//= require_tree 

function initApp(){
  $.fn.editable.defaults.mode = 'inline';
  
  
  $('.labor_rate_editable').editable({
    display: function(value) {
      $(this).text('$' + parseFloat(value).toFixed(2));
      
    },
    success: function(response, newValue) {
      if(response.status == "error") return response.msg;
      else {
        $.ajax({
          type: "GET",
          url: "/contract_allocations/list",
          success: function(data) {
            $('#contract_list').html(data);
            initApp();
          }
        })

      }
    }
  });

  $('.hours_editable').editable({
    display: function(value) {
      $(this).text(parseFloat(value).toFixed(2));

    },
    success: function(response, newValue) {
      if(response.status == "error") return response.msg;
      else {
        $.ajax({
          type: "GET",
          url: "/contract_allocations/list",
          success: function(data) {
            $('#contract_list').html(data);
            initApp();
          }
        })

      }
    }
  });
}



$(function(){
  initApp();
});