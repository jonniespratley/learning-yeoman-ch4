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
			body: 'This is an example post with default data.'
			tags: 'featured'
		initialize: () ->
			console.log('PostModel initialize:',@)
		
		parse : (response) ->
			return response
		
	
