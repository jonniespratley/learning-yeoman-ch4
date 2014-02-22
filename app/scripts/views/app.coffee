define ['jquery', 'underscore', 'backbone','templates'], ($, _, Backbone, JST) ->
	class AppView extends Backbone.View
		template: JST['app/scripts/templates/app.hbs']
		el: '#app'
		initialize: () ->
			console.log 'initialize'
		render: () ->
			console.log 'Render'
			@$el.html(@template)
			return @
		
	
