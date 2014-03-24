define [
	'backbone' 
	'views/app' 
	'views/about'
	'views/posts'
	'views/post'
	'views/post-detail'
	'views/post-form'
	'models/post'
	], (Backbone, AppView, AboutView, PostsView, PostView, PostDetailView, PostFormView, PostModel) ->
	class AppRouter extends Backbone.Router
		routes: 
			'': 'index'
			'about': 'about'
			'posts': 'posts'
			'posts/new': 'postNew'
			'posts/:id': 'postDetail'
			'posts/:id/edit': 'postEdit'
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
			App.showView(new PostDetailView(model: post))
		
		postEdit: (id) ->
			post = new PostModel(_id: id)
			console.log('show post edit', post)
			App.showView(new PostFormView(model: post))
			
		postNew: () ->
			console.log('show post form')
			App.showView(new PostFormView())
		
	
