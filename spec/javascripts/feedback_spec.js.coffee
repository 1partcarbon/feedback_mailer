describe 'Feedback Form', ->

  beforeEach ->
   loadFixtures 'feedback_form'


  describe 'when clicking the feedback link', ->
   it 'displays the feedback form', ->
    $('.feedback_link').click()
    expect($('.feedback_popout') ).toBeVisible()


  describe 'when clicking the feedback link', ->
   it 'hides the feedback link', ->
    $('.feedback_link').click()
    expect($('.feedback_link')).toBeHidden();   


  describe 'when clicking the feedback link', ->
   it 'the feedback form be removed class hidden', ->
     beforeEach ->
      $('.feedback_link').fadeOut()
      expect($('.feedback_popout')).not.toHaveClass('hidden')

  describe 'when clicking the feedback link', ->
   it 'the feedback form be assigned class open', ->
     beforeEach ->
      $('.feedback_link').fadeOut()
      expect($('.feedback_popout')).toHaveClass('open')
   
  describe 'when clicking the close cross', ->
    it 'displays the feedback link', ->
      beforeEach ->
       $('.feedback_link').fadeOut()
       $('.feedback_popout_close').click()
       expect($('.feedback_link')).toBeVisible()














  # describe 'when clicking the feedback link', ->
  #  it 'hides the feedback link', ->
  #   fadeOutSpy = spyOn($('feedback_link', 'fadeOut'))
  #   $('.feedback_link').click()
  #   expect($(fadeOutSpy).toHaveBeenCalled()















  # describe 'when clicking the feedback link', ->
  #   it 'the feedback form should be changed to class open', ->
  #     $('.feedback_link').click()
  #     container = $('feedback_popout')
  #     expect(container).toBeMatchedBy('feedback_popout open')





