define([
	'jquery'
	'underscore'
	'backbone'
	'handlebars'
	'templates'
	], ($, _, Backbone, Handlebars, JST) ->
	
	# Add your coffee-script here
	_.templateSettings = 
		evaluate:    /\{\{#([\s\S]+?)\}\}/g,            #// {{# console.log("blah") }}
		interpolate: /\{\{[^#\{]([\s\S]+?)[^\}]\}\}/g,  #// {{ title }}
		escape:      /\{\{\{([\s\S]+?)\}\}\}/g,         #// {{{ title }}}

	#Handle cleaning up zombie views.
	Backbone.View::close = ->
		@remove()
		@unbind()
		@onClose() if @onClose
	
	App = App or {}
	App.Config or (App.Config = {})
	App.Models or (App.Models = {})
	App.Collections or (App.Collections = {})
	App.Routers or (App.Routers = {})
	App.Views or (App.Views = {})
	App.Templates or (App.Templates = {})
	
	window.App =
		el: '.page'
		childViews : {}
		currentView : null
		debug: true
		session: null
		bootstrap: (config, router) ->
			@config = config if config
			if router
				@router = new router() 
				Backbone.history.start()
			return @
		log: () ->
			console?.log(arguments) if @debug
		showView : (view) ->
			console.warn('App.showView', view)
			#Close current view
			@currentView.close() if @currentView
			
			#Set current view
			@currentView = view
						
			#Render current view
			@currentView.render()
			
			#Inject the views element that has the compiled html
			$(@el).html(@currentView.el)
			
)