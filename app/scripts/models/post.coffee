define ['underscore', 'backbone'], (_, Backbone) ->
	'use strict'
	class PostModel extends Backbone.Model
		idAttribute: '_id'
		url: ->
			'http://jonniespratley.me:8181/api/v2/angular-cms/posts/'+ @id
		defaults:
			title: 'Post Title'
			slug: 'post-title'
			image: '//placehold.it/150x150&text=Image'
			body: 'This is an example post with default data.'
		init: () ->
			console.log('PostModel init:',@)
		
		parse : (response) ->
			App.log('Model parse:', response)
			return response
		
	
