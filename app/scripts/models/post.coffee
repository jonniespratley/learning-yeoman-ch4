define ['underscore', 'backbone'], (_, Backbone) ->
	'use strict'
	class PostModel extends Backbone.Model
		idAttribute: '_id'
		urlRoot: '/api/v2/learning-yeoman-ch3/posts'
		defaults:
			title: 'Post Title'
			slug: 'post-title'
			image: '//placehold.it/150x150&text=Image'
			body: 'This is an example post with default data.'
			tags: 'featured, post'
			created: new Date()
			modified: null
			published: true
		initialize: () ->
			console.log('PostModel initialize:',@)
	
