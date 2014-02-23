define ['jquery', 'underscore', 'backbone','templates'], ($, _, Backbone, JST) ->
	class AboutView extends Backbone.View
		template: JST['app/scripts/templates/about.hbs']
		el: '.content'
		initialize: () ->
			console.log 'initialize About'
			console.log @
		render: () ->
			@$el.html(@template(title: 'About'))
			return @
		
	
