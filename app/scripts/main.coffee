#/*global require*/
'use strict'

require.config
	shim:
		underscore:
			exports: '_'
		backbone:
			deps: [
				'underscore'
				'jquery'
			]
			exports: 'Backbone'
		bootstrap:
			deps: ['jquery'],
			exports: 'jquery'
		handlebars:
			exports: 'Handlebars'
	paths:
		jquery: '../bower_components/jquery/jquery'
		backbone: '../bower_components/backbone/backbone'
		underscore: '../bower_components/underscore/underscore'
		bootstrap: '../bower_components/sass-bootstrap/dist/js/bootstrap'
		handlebars: '../bower_components/handlebars/handlebars'
		config: './config'

require [
	'backbone'
	'app'
	'routes/app'
], (Backbone, App, AppRouter) ->

	Backbone.View::close = ->
		@unbind()
		@onClose() if @onClose

	App.router = new AppRouter()
	window.App = App

	Backbone.history.start()