define ['jquery', 'underscore', 'backbone', 'templates'], ($, _, Backbone, JST) ->
	class PostFormView extends Backbone.View
		template: JST['app/scripts/templates/post-form.hbs']
		#Events listening for
		events: 
			'submit form': 'formSubmitHandler'
			'click .edit': 'editItemHandler'
			'click .delete' : 'deleteItemHandler'
		#Setup event binding
		initialize: () ->
			_.bindAll(@, "render")
			console.log('PostFormView initialize:', @)
			@model.fetch() if @model.id
			@model.bind("change", @render, @)
			@model.bind("destroy", @close, @)
		
		#Handle injecting template
		render: () ->
			@$el.html(@template(@model.toJSON()))
		
		#Handle when a item is clicked
		formSubmitHandler: (e) ->
			#Prevent page reload
			e.preventDefault()
			
			#get form data
			formData = $('form').serializeArray()

			#Store refernce to model data
			modelData = {}

			#Each name/value in data set on the modelData
			_.each(formData, (i, o) =>
				console.log(i, o)
				#Set each name=value
				modelData[o.name] = o.value
			)
			
			#Save model
			@model.save(modelData)
			
			
			Backbone.trigger('post:save', @model)
			
			console.log(@model)
		
		editItemHandler: (e) ->
			Backbone.trigger('post:edit', @)
			console.warn(@)
		
		deleteItemHandler: (e) ->
			Backbone.trigger('post:delete', @)
			console.warn(@)
		
	
