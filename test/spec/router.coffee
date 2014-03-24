define(['jquery', 'backbone', 'routes/app'], ($, Backbone, AppRouter) ->
	###
	Backbone App Router Tests
	###
	describe "App Router", ->
		router = null
		routerSpy = null
		fixture = $('<div id="jasmine-app"></div>')
		#sandbox = sandbox()
		beforeEach ->
			#setFixtures(sandbox)
			console.log('beforeEach')
			router = new AppRouter()
			routerSpy = jasmine.createSpy()
			
			#Watch hash change events
			try
				Backbone.history.start(slient: true, pushState: true) if not Backbone.history.started
				router.navigate('/')
			catch error
				console.log error
			
		
		afterEach ->
			router.navigate('/')
		
		it 'should call the index route', ->
			router.bind('route:index', routerSpy, @)
			router.navigate('', trigger: true)
		
	
)