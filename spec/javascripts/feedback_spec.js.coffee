#=require feedback_mailer/feedback
#=require jquery
#=require jquery_ujs

describe 'feedback', ->
  berforeEach ->
    loadFixtures('feedback_form')


  describe "My great feature", ->
    it "will change the world", ->
      expect(true).toBe true
      expect(jQuery).toBeDefined()

  describe 'when clicking the feedback link', ->
    it 'the feedback form be assigned class open', ->
      expect( $('.feedback_form_container')).toHaveClass('open')

  describe 'when clicking the feedback link', ->
    it 'hides the feedback link', ->
      expect( $('.feedback_link') ).toBeHidden()

  describe 'when clicking the feedback link', ->
    it 'displays the feedback form', ->
      expect( $('.feedback_form_container') ).toBeVisible()