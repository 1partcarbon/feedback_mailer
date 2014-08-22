describe 'Feedback Form', ->

  beforeEach ->
   this.fixtures = fixture.load('feedback_form.html', true)

  describe "My great feature", ->
   it "will change the world", ->
     expect(true).toBe true
     expect($).toBeDefined()

  describe 'when clicking the feedback link', ->
   it 'the feedback form be assigned class open', ->
     $('.feedback_link').click()
     container = $('.feedback_popout')
     expect(container).toHaveClass('feedback_popout open')

  describe 'when clicking the feedback link', ->
   it 'hides the feedback link', ->
    $('.feedback_link').click()
    expect($('.feedback_link') ).toBeHidden()

  describe 'when clicking the feedback link', ->
   it 'displays the feedback form', ->
    $('.feedback_link').click()
    expect($('.feedback_popout') ).toBeVisible()