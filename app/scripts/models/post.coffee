define ['underscore', 'backbone'], (_, Backbone) ->
	'use strict'
	class PostModel extends Backbone.Model
		idAttribute: '_id'
		url: ->
			'http://jonniespratley.me:8181/api/v2/learning-yeoman/posts/'+ @id
		defaults:
			title: 'Post Title'
			slug: 'post-title'
			image: '//placehold.it/150x150&text=Image'
			tags: ['Post']
			body: 'This is an example post with default data.'
		init: () ->
			console.log('PostModel init:',@)
		success: (data) ->
			console.log(data)
		parse : (response) ->
			App.log('Model parse:', response)
			#@set( response )
			return response
		
	
