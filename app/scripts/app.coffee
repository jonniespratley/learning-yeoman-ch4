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
		console.log('Backbone.View.close()', @)
		#@$el.fadeToggle()
		#@remove()
		#@$el.hide()
		@unbind()
		@onClose() if @onClose
	
	class window.App
		el: '.content'
		models : []
		childViews : null
		currentView : null
		debug: true
		session: null
		Collections: {}
		Models: {}
		View: {}
		Routers: {}
		pubsub: 
			listeners: {}
			published: {}
			pub: (name, data) =>
				console.log('pub', name, data)
				@pubsub.published[name] = data
				Backbone.trigger(name, data)
				
			sub: (name, callback) =>
				console.log('sub', name, callback)
				@pubsub.listeners[name] = callback
				Backbone.on(name, callback)
			
		
		constructor : (config) ->
			@config = config if config
			@childViews = {}
			@initMenu()
			@log(@)
			@initMenu()
			return @
		log: () ->
			console.log(arguments) if @debug
		
		showView : (view) ->
			@childViews[view.cid] = view
			@currentView.close() if @currentView
			@currentView = view
			#$(@el).html('<div/>').attr('class', 'page');
			@currentView.render()
			#$('body').html(@currentView.el)
			$(@el).html(@currentView.render().el)
			#$(@el).html("<div data-view-cid='#{view.cid}'></div>");
			###
			_.each(@childViews, (_view, _cid) ->
				console.log(_view, _cid)
				@$("[data-view-cid='#{_cid}']").replaceWith(_view.render())
			)
			###
			console.log('App.showView', @)
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