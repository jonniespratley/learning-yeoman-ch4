define ['jquery', 'underscore', 'backbone','templates'], ($, _, Backbone, JST) ->
	Backbone.View::close = ->
		console.log('Backbone.View.close()', @)
		@remove()
		@unbind()
		@onClose() if @onClose
	
	class AppView extends Backbone.View
		template: JST['app/scripts/templates/app.hbs']
		el: '#app'
		initialize: () ->
			console.log 'initialize'
		render: () ->
			console.log 'Render'
			@$el.html(@template)
			return @
		
	
