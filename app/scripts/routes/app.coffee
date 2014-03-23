define [
	'backbone' 
	'views/app' 
	'views/about'
	'views/posts'
	'views/post'
	'models/post'
	], (Backbone, AppView, AboutView, PostsView, PostView, PostModel) ->
	class AppRouter extends Backbone.Router
		routes: 
			'': 'index'
			'about': 'about'
			'posts': 'posts'
			'posts/:id': 'postDetail'
		index: () ->
			console.log('#/index route')
			myApp.showView(new AppView())
		about: () ->
			console.log('#/about route')
			myApp.showView(new AboutView())
		posts: () ->
			console.log('posts view')
			myApp.showView(new PostsView())
		
		postDetail: (id) ->
			post = new PostModel(_id: id)
			console.log('show post detail', post)
			myApp.showView(new PostView(model: post, el: '.content'))
	
