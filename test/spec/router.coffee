define(['jquery', 'backbone', 'underscore', 'routes/app'], ($, Backbone, _, AppRouter) ->
	###
	Backbone App Router Tests
	###
	router = null
	routerSpy = null
	describe "AppRouter:", ->
		
		beforeEach ->
			router = new AppRouter()
			routerSpy = jasmine.createSpy()
			
			#Watch hash change events
			try
				Backbone.history.start(slient: true, pushState: true)
				router.navigate('_SpecRunner.html')
			catch error
				console.log error
			
		afterEach ->
			router.navigate('_SpecRunner.html')
		
		it "should have the right amount of routes", ->
			expect(_.size(router.routes)).toEqual 6

		it 'should call the index route', ->
			router.bind('route:index', routerSpy)
			router.navigate('', true)
			expect(routerSpy.wasCalled).toBe(true)
		
		it 'should handle the posts route', ->
			router.bind('route:posts', routerSpy)
			router.navigate('#posts', true)
			expect(routerSpy.wasCalled).toBe(true)
			
		it 'should not handle unknown routes', ->
			router.bind('route:route-doesnt-exist', routerSpy)
			router.navigate('#route-doesnt-exist', true)
			expect(routerSpy.wasCalled).toBe(false)
	
)