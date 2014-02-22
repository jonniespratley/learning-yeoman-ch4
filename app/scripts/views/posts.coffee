define ['jquery', 'underscore', 'backbone','templates', 'handlebars', 'collections/posts', 'views/post'], ($, _, Backbone, JST, Handlebars, PostsCollection, PostView) ->
	class PostsView extends Backbone.View
		template: JST['app/scripts/templates/posts.hbs']
		el: '.content'
		initialize: () ->
			@collection = new PostsCollection()
			@collection.fetch(dataType: 'jsonp')
			@collection.bind('posts:fetch:complete', @render, @)
			_.bindAll(@, "render")
			@childViews = []
			@listenTo(@collection, 'add', @renderOne)
			@listenTo(@collection, 'reset', @renderAll)
			console.log @
		render: () ->
			console.log 'render PostsView'
			@$el.html(@template(@model.toJSON())
			return @$el
		
		#Render 1
		renderOne: (item) ->
			#Log the item passed for debugging.
			console.log 'render one', item
			#Create new list item view passing in a single model
			itemView = new App.Views.ListItemView(model: item)
			#Store a reference to the view by adding it to the views child-views
			@childViews.push(itemView)
			#Append the item view to this view element by calling the render method.
			@$el.append(itemView.render())
			console.log itemView.render()
		
		#Render all
		renderAll: () ->
			@collection.each(@renderOne, @)
		
	
