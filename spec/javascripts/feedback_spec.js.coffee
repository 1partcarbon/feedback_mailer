#=require feedback_mailer/feedback
#=require jquery

describe 'feedback', ->
  describe 'clicking the feedback link', ->
    it 'displays the feedback form', ->
     expect( $('.feedback_form_container')).toHaveClass('open')