define(['jquery', 'backbone', 'underscore', 'routes/app'], ($, Backbone, _, AppRouter) ->
	router = null
	routerSpy = null
	navigate = null

	describe "AppRouter:", ->
		beforeEach ->
			router = new AppRouter()
			routerSpy = jasmine.createSpy()

			navigate = (route) ->
				router.bind("route:#{route}", routerSpy)
				router.navigate(route, true)
				routerSpy.wasCalled

			try
				Backbone.history.start(slient: true, pushState: false)
				router.navigate('_SpecRunner.html')
			catch error
				console.log error

		afterEach ->
			router.navigate('_SpecRunner.html')

		it "should have the right amount of routes", ->
			expect(_.size(router.routes)).toEqual 6

		it 'should handle index route', ->
			expect(navigate('index')).toBe(true)

		it 'should handle about route', ->
			rexpect(navigate('about')).toBe(true)

		it 'should handle posts route', ->
			rexpect(navigate('posts')).toBe(true)


		it 'should not handle unknown', ->
			router.bind('route:route-doesnt-exist', routerSpy)
			router.navigate('#route-doesnt-exist', true)
			expect(routerSpy.wasCalled).toBe(false)
)