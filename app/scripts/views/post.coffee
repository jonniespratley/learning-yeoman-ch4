define ['jquery', 'underscore', 'backbone', 'templates'], ($, _, Backbone, JST) ->
	class PostView extends Backbone.View
		className: 'post'
		template: JST['app/scripts/templates/post.hbs']
		#Events listening for
		events: 
			'click .post': 'itemClickHandler'
			'click .edit': 'editItemHandler'
			'click .delete' : 'deleteItemHandler'
		#Setup event binding
		initialize: () ->
			_.bindAll(@, "render")
			console.log('PostView initialize:', @)
			@model.bind("change", @render, @)
			@model.bind("destroy", @close, @)
		
		#Handle injecting template
		render: () ->
			@$el.html(@template(@model.toJSON()))
		
		#Handle when a item is clicked
		itemClickHandler: (e) ->
			Backbone.trigger('post:click', @)
			console.log(@)
		
		editItemHandler: (e) ->
			Backbone.trigger('post:edit', @)
			console.log(@)
		
		deleteItemHandler: (e) ->
			Backbone.trigger('post:delete', @)
			console.log(@)
		
		close: () ->
			@unbind()
	
