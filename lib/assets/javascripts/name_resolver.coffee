window.NameResolver =

  titleFromUrl: (talkUrl) ->
    tokens = talkUrl.split('/')
    return unless tokens.length > 1
    @processTitle(tokens[tokens.length-1])

  processTitle: (url) ->
    titleRaw = url
    titleRaw = titleRaw.
      replace(/[\W|\d]+/g, ' ').
      replace(/\-/g, ' ').
      replace(/(\s|^)(\w)/g, (a)-> "#{a.toString().toUpperCase()}")

window.NameResolver = NameResolver

