define ['underscore', 'backbone'], (_, Backbone) ->
	'use strict'
	class PostModel extends Backbone.Model
		idAttribute: '_id'
		urlRoot: '/api/v2/learning-yeoman-ch3/posts'
		defaults:
			title: 'Post Title'
			slug: 'post-title'
			image: '//placehold.it/250&text=Image'
			body: 'This is an example post with default data.'
			tags: ['featured', 'post']
			created: null
			modified: null
			published: true
		initialize: ->
			console.log @
		validate: (attrs, options)->
			if attrs.title is ''
				return 'You must provide a title.'
			if attrs.title.length < 2
				return 'The title must be at least 2 characters.'
