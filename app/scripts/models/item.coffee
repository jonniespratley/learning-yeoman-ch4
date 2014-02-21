define ['underscore', 'backbone'], (_, Backbone) ->
	'use strict'
	###
	ItemModel - This model is the data model for a single item view.
	###
	class ItemModel extends Backbone.Model
		url: ->
			'http://jonniespratley.me:8181/api/v2/learning-yeoman/posts/'+ @id
		
		defaults:
			title: 'Item Title'
			slug: 'item-slug'
			image: '//placehold.it/150x150&text=Image'
			body: 'This is an example item with default data.'
		
		init: () ->
			console.log('Model init:', @)
		
		success: (data) ->
			console.log(data)
		
		parse : (response) ->
			console.log('Model parse:', response)
			#@set( response )
			response.id = response._id
			return response
		
	#ends class
#ends define

