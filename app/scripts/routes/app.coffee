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
			App.showView(new AppView())
		about: () ->
			console.log('#/about route')
			App.showView(new AboutView())
		posts: () ->
			console.log('posts view')
			App.showView(new PostsView())
		
		postDetail: (id) ->
			post = new PostModel(_id: id)
			console.log('show post detail', post)
			App.showView(new PostView(model: post, el: '.content'))
	
