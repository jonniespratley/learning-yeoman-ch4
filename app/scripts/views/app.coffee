define ['jquery', 'underscore', 'backbone','templates'], ($, _, Backbone, JST) ->
	class AppView extends Backbone.View
		template: JST['app/scripts/templates/app.hbs']
		el: 'body'
		initialize: () ->
			console.log 'initialize' @
			@render
		render: () ->
			console.log 'Render' @
			@$el.html('COntent')
			@$el.html(@template)
			return @
		
	
