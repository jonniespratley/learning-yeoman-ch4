define(() ->
 ###
 App - This is the global app object that contains all classes.
 ###
 App =
  Model: Model
  Models: {}
  Collection: Collection
  Collections: {}
  View: View
  Views: {}
  Router: Router
  Routers: {}
  session: {}
  debug: true
  init: ->
    @log 'Hello from Backbone!', @
    return @
  
  log: (args) ->
    console.log args, arguments if @debug
    
  #Method to help cleanup zombie views
  showView: (view) ->
    @log('show view',@currentView, view)
    
    @currentView.close() if @currentView
    @currentView = view
    @currentView.render()
    
    $('.pages').html(@currentView.$el)
    

)