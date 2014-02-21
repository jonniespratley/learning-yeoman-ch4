define ['jquery', 'underscore', 'backbone', 'templates'], ($, _, Backbone, JST) ->
	class ListitemView extends Backbone.View
		template: JST['app/scripts/templates/listitem.hbs']
		#Classname to attach
		className: 'list-group-item'
		#Tag to wrap view in
		tagName: 'li'
		#Events listening for
		events: 
			'click li': 'itemClickHandler'
			'click .edit': 'editItemHandler'
			'click .delete' : 'deleteItemHandler'
		#Setup event binding
		initialize: () ->
			_.bindAll(@, "render")
			console.log('ListItemView', @)
			@template = $('#list-item-tmpl').text()
			@model.bind("change", @render, @)
			@model.bind("destroy", @close, @)
		
		#Handle injecting template
		render: () ->
			return Mustache.render(@template, @model.toJSON())
		
		#Handle when a item is clicked
		itemClickHandler: (e) ->
			console.log(@)
		
		editItemHandler: (e) ->
			console.log(@)
		
		deleteItemHandler: (e) ->
			console.log(@)
		
	
