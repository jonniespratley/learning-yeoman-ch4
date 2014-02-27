define ['jquery', 'underscore', 'backbone', 'templates'], ($, _, Backbone, JST) ->
	class PostView extends Backbone.View
		className: 'list-group-item post'
		template: JST['app/scripts/templates/post.hbs']
		#Events listening for
		events: 
			'click .post': 'itemClickHandler'
			'click .edit': 'editItemHandler'
			'click .delete' : 'deleteItemHandler'
		#Setup event binding
		initialize: () ->
			_.bindAll(@, "render")
			console.log('PostView', @)
			@model.fetch(dataType: 'jsonp')
			@model.bind("change", @render, @)
			@model.bind("destroy", @close, @)
		
		#Handle injecting template
		render: () ->
			@$el.html(@template(@model.toJSON()))
		
		#Handle when a item is clicked
		itemClickHandler: (e) ->
			App.pubsub.pub('post:click', @)
			console.log(@)
		
		editItemHandler: (e) ->
			App.pubsub.pub('post:edit', @)
			console.log(@)
		
		deleteItemHandler: (e) ->
			App.pubsub.pub('post:delete', @)
			console.log(@)
		
	
