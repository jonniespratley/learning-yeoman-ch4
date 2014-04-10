define(['jquery', 'backbone', 'app'], ($, Backbone, App) ->
	router = null
	routerSpy = null
	fixture = $('<div id="fixture" class="page"></div>')
	testApp = App.bootstrap()

	###
	Backbone App Tests
	###
	describe "My Backbone Project", ->
		beforeEach(()->
			fixture.remove();
			$('body').append(fixture);
		)

		describe 'App Namespace', ->

			it 'should have Collections property', ->
				expect( testApp.Collections ).toBeDefined

			it 'should have Models property', ->
				expect( testApp.Models ).toBeDefined

			it 'should have Routers property', ->
				expect( testApp.Routers ).toBeDefined

			it 'should have Views property', ->
				expect( testApp.Views ).toBeDefined


)