class App.Views.Home extends Backbone.View

  initialize: ->
    @collection = new App.Collections.Quotes()
    @collection.on 'reset', @render, @
    @collection.fetch()

  addOne: (quote) ->
    view = new App.Views.Quote(model: quote)
    $("#quotes").append view.render().el

  render: ->
    @$el.html HandlebarsTemplates['home']
    @collection.each(@addOne, @)
    @