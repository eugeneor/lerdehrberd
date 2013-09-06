// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require jquery.ui.all
//= jquery.ui.swappable
//= require_tree .


$(document).ready(function() {
  // $('.sortable').dragswap({
  //     element: 'article', // the child element you are targeting
  //     overClass: 'over', // class when element goes over another element
  //     moveClass: 'moving', // class when element is moving
  //     dropClass: 'drop', // the class to add when the element is dropped
  //     dropAnimation: false, // do you want to detect animation end?
  //     exclude: '.disabled', // excluded elements selector
  //     prefix: getPrefix(), // function to get the prefix of the browser
  //     dropComplete: function(){} // what to do when the drop is complete
  // })
});

$(document).foundation();
