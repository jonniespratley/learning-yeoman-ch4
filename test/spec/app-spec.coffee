define(['jquery', 'backbone', 'app'], ($, Backbone, App) ->
	router = null
	routerSpy = null
	fixture = $('<div id="jasmine-app"></div>')
	window.testApp = App.init()
	###
	Backbone App Tests
	###
	describe "Testing a Backbone App", ->
		#sandbox = sandbox()
		
		beforeEach(()->
			#setFixtures(sandbox)
			console.log('beforeEach')
		)
		
		describe 'App', ->
			it 'should have session property', ->
				expect( testApp.session ).toBe(null)
			
			it 'should have Collections property', ->
				
			
			it 'should have Models property', ->
				
			
			it 'should have Routers property', ->
				
			
			it 'should have Views property', ->
				
			
		
	
)