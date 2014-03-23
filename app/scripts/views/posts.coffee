define ['jquery', 'app', 'backbone','templates', 'collections/posts', 'views/post'], ($, App, Backbone, JST, PostsCollection, PostView) ->
	
	class PostsView extends Backbone.View
		template: JST['app/scripts/templates/posts.hbs']
		el: '.content'
		initialize: () ->
			_.bindAll(@, "render")
			@collection = new PostsCollection()
			@collection.fetch(dataType: 'jsonp')
			@collection.bind('posts:fetch:complete', @render, @)
			@childViews = []
			@listenTo(@collection, 'add', @renderOne)
			@listenTo(@collection, 'reset', @renderAll)
		
		render: () ->
			#@$el.html(@template(@model.toJSON())
			@$el.html(@template())
			return @
		
		renderOne: (item) ->
			#Create new list item view passing in a single model
			itemView = new PostView(model: item)
			#Store a reference to the view by adding it to the views child-views
			@childViews.push(itemView)
			#Append the item view to this view element by calling the render method.
			@$el.find('.list-group').append(itemView.render())
		
		#Render all
		renderAll: () ->
			@collection.each(@renderOne, @)
		
	
