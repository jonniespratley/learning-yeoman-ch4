define ['jquery', 'underscore', 'backbone', 'templates'], ($, _, Backbone, JST) ->
	class PostDetailView extends Backbone.View
		template: JST['app/scripts/templates/post-detail.hbs']
		#Events listening for
		events: 
		#Setup event binding
		initialize: () ->
			_.bindAll(@, "render")
			console.log('PostDetailView initialize:', @)
			#@model.fetch(dataType: 'jsonp') if @model.id
			@model.fetch() if @model.id
			@model.bind("change", @render, @)
			@model.bind("destroy", @close, @)
		
		#Handle injecting template
		render: () ->
			@$el.html(@template(@model.toJSON()))
	
