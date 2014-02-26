define ['jquery', 'underscore', 'backbone','templates', 'Config'], ($, _, Backbone, JST, Config) ->
	class AppView extends Backbone.View
		template: JST['app/scripts/templates/app.hbs']
		initialize: () ->
			console.log 'initialize AppView'
			console.log @
		render: () ->
			@$el.html(@template(Config))
			return @
		
	
