define ['backbone', 'views/app'], (Backbone, AppView) ->
	class AppRouter extends Backbone.Router
		routes: 
			'': 'index'
		index: () ->
			console.log('Render default app tempate')
			window.AppView = new AppView().render()
		
	
