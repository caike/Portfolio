describe 'NameResolver', ->

  describe 'strings that are not urls', ->

    it 'does not process title', ->
      spyOn(NameResolver, 'processTitle')
      NameResolver.titleFromUrl('someurl')
      expect(NameResolver.processTitle).not.toHaveBeenCalled()


  describe 'for valid http formats', ->

    it 'processes title', ->
      spyOn(NameResolver, 'processTitle')
      NameResolver.titleFromUrl('http://slideshare.com/someone/some-cool-talk')
      expect(NameResolver.processTitle).toHaveBeenCalled()

    it 'parses http://slideshare.com/someone/some-cool-talk to Some Cool Talk', ->
      title = NameResolver.titleFromUrl('http://slideshare.com/someone/some-cool-talk')
      expect(title).toEqual('Some Cool Talk')


