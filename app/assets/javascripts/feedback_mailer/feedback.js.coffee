$(document).ready ->
 $(".feedback_link").click ->
   $.get "/feedback_mailer/feedback/new", ((data) ->
     $(".feedback_form_container").html data
     $(".feedback_form_container").addClass "open"
     return
   ), "html"
   
   # $('.feedback_form_container').reveal();
   $(".feedback_link").hide()
   false

 $(".feedback_form_container").on "ajax:success", (event, xhr, data, status) ->
   $(".feedback_form_container").html xhr
   return

 return
