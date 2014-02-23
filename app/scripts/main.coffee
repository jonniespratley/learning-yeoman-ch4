#/*global require*/
'use strict'
require.config
	shim:
		underscore:
			exports: '_'
		backbone:
			deps: ['underscore', 'jquery']
			exports: 'Backbone'
		handlebars:
				exports: 'Handlebars'
	paths:
		jquery: '../bower_components/jquery/jquery'
		backbone: '../bower_components/backbone/backbone'
		underscore: '../bower_components/underscore/underscore'
		handlebars: '../bower_components/handlebars/handlebars'
	

require ['jquery','backbone', 'app', 'routes/app'], ($, Backbone, App, AppRouter) ->
	$ ->
		console.log 'App ready', @
		window.App = App.init()
		new AppRouter()
		Backbone.history.start()

