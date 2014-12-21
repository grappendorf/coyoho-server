describe 'coyoho-about', ->

  fixture 'coyoho-about/coyoho-about_fixture.html'

  describe 'element', ->
    beforeEach ->
      @element = document.querySelector '#about'

    it 'should have a title"', ->
      expect(@element.shadowRoot.querySelector('h1').textContent).toBe 'CoYoHo'