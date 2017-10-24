function toggleAdmin() {
  var checkbox = this;

  $(checkbox).parent().toggleClass("admin");
}

$(document).ready(function() {
  $("input[type=checkbox]").bind('change', toggleAdmin);
});
