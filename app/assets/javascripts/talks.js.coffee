class OtherSlidesView
  constructor: ->
    @template = Handlebars.compile($('#other_slides').html())
    @element = $('#render_more_from_author')

  render: ->
    context = @load_data()
    @element.html(@template(context))

  load_data: ->
    data = $('#more_from_author').html()
    JSON.parse(data)


window.Portfolio = {}

window.Portfolio.Views = {}

window.Portfolio.Views.OtherSlidesView = OtherSlidesView
