define ['underscore', 'backbone', 'models/post'], (_, Backbone, PostModel) ->
	class PostsCollection extends Backbone.Collection
		model: PostModel
		url: ->
			'/api/v2/learning-yeoman-ch3/posts'
		initialize: () ->
			console.log('PostsCollection initialize:',@)
		parse : (response) ->
			#@set(results: response)
			@trigger('posts:fetch:complete')
			return response
		
	
