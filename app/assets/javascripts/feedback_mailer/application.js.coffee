$(document).ready ->
  $('.feedback_link').click ->
    $.get("/feedback_mailer/feedback/new", 
      (data) -> 
        $('.feedback_form_container')
          .html data 
          .addClass 'open',
      'html'
    )

    $('.feedback_link')
      .hide()
    false

    $('feedback_form_container').ajax
      success:   (event, xhr, data, status) ->
        $('.feedback_form_container')
          .html xhr


     # $.get(url, params, (response)->
     #        markerUsername(response)
     #    , "json")
