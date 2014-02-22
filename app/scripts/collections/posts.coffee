define ['underscore', 'backbone', 'models/post'], (_, Backbone, PostModel) ->
	class PostsCollection extends Backbone.Collection
		model: PostModel
		url: ->
			'http://jonniespratley.me:8181/api/v2/angular-cms/posts'
		parse : (response) ->
			#@set(results: response)
			@trigger('posts:fetch:complete')
			return response
		
	
