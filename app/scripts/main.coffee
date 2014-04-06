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
	

require ['jquery','backbone', 'config', 'app', 'routes/app'], ($, Backbone, Config, App, AppRouter) ->
	$ ->
		console.log 'App ready', @
		
		window.app = App.bootstrap(Config, AppRouter)
