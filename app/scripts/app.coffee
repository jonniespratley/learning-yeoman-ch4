define ['jquery', 'underscore', 'backbone', 'templates'], ($, _, Backbone, JST) ->
	# Add your coffee-script here
	_.templateSettings = 
		evaluate:    /\{\{#([\s\S]+?)\}\}/g,            #// {{# console.log("blah") }}
		interpolate: /\{\{[^#\{]([\s\S]+?)[^\}]\}\}/g,  #// {{ title }}
		escape:      /\{\{\{([\s\S]+?)\}\}\}/g,         #// {{{ title }}}

	Backbone.View::close = ->
		console.log('Backbone.View.close()', @)
		#@$el.fadeToggle()
		#@remove()
		#@$el.empty()
		@unbind()
		@onClose() if @onClose
	
	App =
		el: '.content'
		models : []
		childViews : null
		currentView : null
		debug: true
		pubsub: 
			listeners: {}
			published: {}
			pub: (name, data) ->
				console.log('pub', name, data)
				App.pubsub.published[name] = data
				Backbone.trigger(name, data)
				
			sub: (name, callback) ->
				App.pubsub.listeners[name] = callback
				console.log('sub', name, callback)
				Backbone.on(name, callback)
			
		
		init : () ->
			@childViews = {}
			@log(@)
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
			$(@el).html(App.currentView.render().el)
			#$(@el).html("<div data-view-cid='#{view.cid}'></div>");
			###
			_.each(@childViews, (_view, _cid) ->
				console.log(_view, _cid)
				@$("[data-view-cid='#{_cid}']").replaceWith(_view.render())
			)
			###
			console.log('App.showView', @)
		
		
		
	
