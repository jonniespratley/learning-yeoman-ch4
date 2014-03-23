define(['jquery', 'backbone', 'app'], ($, Backbone, App) ->
	router = null
	routerSpy = null
	fixture = $('<div id="jasmine-app"></div>')
	testApp = App.init()
	###
	Backbone App Tests
	###
	describe "My Backbone Project", ->
		#sandbox = sandbox()
		
		beforeEach(()->
			#setFixtures(sandbox)
			console.log('beforeEach')
		)
		
		describe "Namespace", ->
			it "provides the 'App' object", ->
				# Expect exists and is an object.
				expect(testApp).to.be.an "object"
				# Expect all namespace properties are present.
				expect(testApp).to.include.keys "Config", "Collections", "Models", "Routers", "Templates", "Views"
		
		describe 'App', ->
			it 'should have session property', ->
				expect( testApp.session ).toBe(null)
			
			it 'should have Collections property', ->
				expect( testApp.Collections ).toBeDefined
			
			it 'should have Models property', ->
				expect( testApp.Models ).toBeDefined	
			
			it 'should have Routers property', ->
				expect( testApp.Routers ).toBeDefined
			
			it 'should have Views property', ->
				expect( testApp.Views ).toBeDefined
			

)