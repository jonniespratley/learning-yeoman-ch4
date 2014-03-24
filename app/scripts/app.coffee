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

	Backbone.View::close = ->
		console.warn('Backbone.View.close()', @)
		#@$el.fadeToggle()
		#@remove()
		#@$el.hide()
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
		log: () ->
			console?.log(arguments) if @debug
		el: '.page'
		models : []
		childViews : {}
		currentView : null
		debug: true
		session: null
		bootstrap: (config, router) ->
			@config = config if config
			@router = new router() if router
			Backbone.history.start()
			return @
		
		showView : (view) ->
			console.warn('App.showView', view)
			#Close current view
			@currentView.close() if @currentView
			
			#Set current view
			@currentView = view
						
			#Render current view
			@currentView.render()
			$(@el).html(@currentView.el)
			
			#Listen for menu changes and toggle active element
		initMenu: () ->
			$(document).ready(() ->
				$('.nav').on('click', 'a', (e) ->
					#Clear active menu
					$(e.currentTarget).parents().find('.active').removeClass('active')
					#Set active menu
					$(e.currentTarget).parent().addClass('active')
				)
			)
		
)