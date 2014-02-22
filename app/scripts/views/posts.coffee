define ['jquery', 'underscore', 'backbone','templates'], ($, _, Backbone, JST) ->
	class PostsView extends Backbone.View
		template: JST['app/scripts/templates/posts.hbs']
		el: '.content'
		initialize: () ->
			console.log 'initialize PostsView'
			console.log @
		render: () ->
			@$el.html(@template)
			return @
		
	
