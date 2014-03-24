define ['jquery', 'underscore', 'backbone', 'templates', 'models/post'], ($, _, Backbone, JST, Post) ->
	class PostFormView extends Backbone.View
		template: JST['app/scripts/templates/post-form.hbs']
		#Events listening for
		events: 
			'click .save': 'formSubmitHandler'
		#Setup event binding
		initialize: () ->
			_.bindAll(@, "render")
			#console.log('PostFormView initialize:', @)
			if @model?
			#	@model.fetch() 
				@model.bind("change", @render, @)
				@model.bind("destroy", @close, @)
			else 
				@model = new Post()
		
		#Handle injecting template
		render: () ->
			@$el.html(@template(@model?.toJSON()))
		
		#Handle when a item is clicked
		formSubmitHandler: (e) ->
			#Prevent page reload
			e.preventDefault()
			
			#get form data
			formData = $('form').serializeArray()

			#Store refernce to model data
			modelData = {}

			#Each name/value in data set on the modelData
			_.each(formData, (o) ->
				#Set each name=value
				modelData[o.name] = o.value
			)
			#Save model
			@model.save(modelData, 
				success: (data) ->
					#alert(data.toString())
					App.router.navigate('#/posts')
			)
			
			
			Backbone.trigger('post:save', @model)
			
			console.log(modelData, @model)
	

