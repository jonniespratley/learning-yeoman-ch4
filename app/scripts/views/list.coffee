define ['jquery', 'underscore', 'backbone','templates', 'handlebars', 'collections/posts', 'views/item'], ($, _, Backbone, JST, Handlebars, PostsCollection, ItemView) ->
	class ListView extends Backbone.View
		template: JST['app/scripts/templates/list.hbs']
		initialize: (collection) ->
			_.bindAll(@, "render")
			@childViews = []
			if collection
				collection.on('reset', @render, @)
				@listenTo(collection, 'add', @renderOne)
				@listenTo(collection, 'reset', @renderAll)
		
		render: () ->
			#@$el.html(@template(@model.toJSON())
			@$el.html(@template())
			@renderAll()
			return @
		
		renderOne: (item) ->
			#Create new list item view passing in a single model
			itemView = new ItemView(model: item)
			#Store a reference to the view by adding it to the views child-views
			@childViews.push(itemView)
			#Append the item view to this view element by calling the render method.
			@$el.append(itemView.render())
		
		#Render all
		renderAll: () ->
			@collection.each(@renderOne, @)
		
	
