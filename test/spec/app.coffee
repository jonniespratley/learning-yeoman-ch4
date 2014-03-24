define(['jquery', 'backbone', 'app'], ($, Backbone, App) ->
	router = null
	routerSpy = null
	fixture = $('<div id="jasmine-app"></div>')
	testApp = App.bootstrap()
	###
	Backbone App Tests
	###
	describe "My Backbone Project", ->
		#sandbox = sandbox()
		
		beforeEach(()->
			$('#fixture').remove();
			$('body').append('<div id="fixture" class="page"></div>');
			console.log('beforeEach')
		)
		
		describe "Namespace", ->
			it "provides the 'App' object", ->
				
			
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