// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
// require("materialize-sprockets")
// require("chartkick")
// require("chart.js")


$( document ).on('turbolinks:load', function() {
    $('.tabs').tabs(); 
    $(".dropdown-trigger").dropdown();
    $('#fade-out-target').fadeOut(4000);
    $('.collapsible').collapsible();
})

document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.tap-target');
    var instances = M.TapTarget.init(elems, options);
    instances.next();
var elem = document.querySelector('.tabs'); var instance = M.Tabs.init(elem, {});
  })

  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.collapsible');
    var instances = M.Collapsible.init(elems, options);
  });



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
