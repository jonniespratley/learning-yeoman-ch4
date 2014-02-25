define ['jquery', 'underscore', 'backbone','templates'], ($, _, Backbone, JST) ->
	class AppView extends Backbone.View
		template: JST['app/scripts/templates/app.hbs']
		initialize: () ->
			console.log 'initialize AppView'
			console.log @
		render: () ->
			@$el.html(@template(
				title: 'chapter 4'
				body: 'a starting point for a modern BackboneJS application.'
				image: 'http://goo.gl/fOq55C'
			))
			return @
		
	
