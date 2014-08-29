$(document).ready ->
  
  $('.feedback_link').click ->
    $.get '/feedback_mailer/feedback/new', ((data) ->
      $('.feedback_form_container').html data
      $('.feedback_popout').removeClass 'hidden'
      $('.feedback_popout').addClass 'open'

    ), 'html'
    console.log('going in here!')
    $('.feedback_link').fadeOut()
    false

  $('.feedback_form_container').on 'ajax:success', (event, xhr, data, status) ->
    $('.feedback_form_container').html xhr 


  $('.feedback_popout_close').click ->
    $('.feedback_popout').removeClass 'open'
    $('.feedback_popout').addClass 'animatedHidden'
    $('.feedback_link').fadeIn()


