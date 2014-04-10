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

###
  1.	The describe block wraps the inner contents in a test suite.
2.	Then the beforeEach method is used to add a sandbox element to the body.
3.	Then a new instance of the view is created and attached to the sandbox element
4.	The afterEach method is used to remove the view from the sandbox element after every test.
5.	The first it block will test if the view is attached to the correct DOM element.
6.	The second it block will test if the view has the proper class names attached.
7.	The third it block will test that when the element is clicked the callback is triggered.

###
)