define [
	'backbone' 
	'views/app' 
	'views/about'
	'views/posts'
	'views/post'
	], (Backbone, AppView, AboutView, PostsView, PostView) ->
	class AppRouter extends Backbone.Router
		routes: 
			'': 'index'
			'about': 'about'
			'posts': 'posts'
			'posts/:id': 'postDetail'
		index: () ->
			console.log('#/index route')
			App.showView(new AppView())
		about: () ->
			console.log('#/about route')
			App.showView(new AboutView())
		posts: () ->
			console.log('posts view')
			App.showView(new PostsView())
		
		postDetail: (id) ->
			console.log('show post detail')
			App.showView(new PostView(id))
	
