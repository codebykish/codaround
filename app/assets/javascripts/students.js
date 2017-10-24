function toggleAdmin() {
  var checkbox = this;
  var listItem = $(this).parent();
  var studentId = $(this).attr('id');
  var isAdmin = $(this).hasClass("admin");

  console.log(studentId)

  $(checkbox).toggleClass("admin")
  $.ajax({
    type: "PUT",
    url: "/users/" + studentId + ".json",
    data: JSON.stringify({
      user: { admin: !isAdmin }
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    console.log(Object.keys(data));


    $(checkbox).toggleClass("admin", data.admin);
  })
  .fail(function(err) {
    console.log(err)
  });
}

$(document).ready(function() {
  $("input[type=checkbox]").bind('change', toggleAdmin);
});
