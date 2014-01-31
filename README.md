learning-yeoman-ch4
===================

This is the repository for the Learning Yeoman Chapter 4 tutorial.

![Build](https://travis-ci.org/jonniespratley/learning-yeoman-ch4.png)


# Chapter 4: My Backbone Project


* Overview
	* BackboneJS Concepts
		* Application Object
	* Events
		* Creating Events
		* Using Events
		* Testing Events
	* Models
		* Creating Models
		* Using Models
		* Testing Models
	* Collections
		* Creating Collections
		* Using Collections
		* Testing Collections
	* Views
		* Creating Views
		* Using Views
		* Testing Views
	* Routers
		* Creating Routers
		* Using Routers
		* Testing Routers
* New Backbone Project
	* MVVM Pattern
	* Presentation Tier
	* Middle tier - Alternative Setup
		* Heroku - Getting Started
	* Data tier - Alternative Setup
		* Parse.com Setup
	* Application Anatomy
		* Index
			* Posts
			* Post Detail
			
			
## Overview

When working on a web application that involves a lot of JavaScript, one of the first things you learn is to stop tying your data to the DOM. It's all too easy to create JavaScript applications that end up as tangled piles of jQuery selectors and callbacks, all trying frantically to keep data in sync between the HTML UI, your JavaScript logic, and the database on your server. For rich client-side applications, a more structured approach is often helpful.

With Backbone, you represent your data as Models, which can be created, validated, destroyed, and saved to the server. Whenever a UI action causes an attribute of a model to change, the model triggers a "change" event; all the Views that display the model's state can be notified of the change, so that they are able to respond accordingly, re-rendering themselves with the new information. In a finished Backbone app, you don't have to write the glue code that looks into the DOM to find an element with a specific id, and update the HTML manually — when the model changes, the views simply update themselves.




## BackboneJS Concepts
Philosophically, Backbone is an attempt to discover the minimal set of data-structuring (models and collections) and user interface (views and URLs) primitives that are generally useful when building web applications with JavaScript. In an ecosystem where overarching, decides-everything-for-you frameworks are commonplace, and many libraries require your site to be reorganized to suit their look, feel, and default behavior — Backbone should continue to be a tool that gives you the freedom to design the full experience of your web application.




### Models

### Views

### Controllers

### Collections

### Routers





## New Backbone Project
This is the new backbone project.

```
yo backbone --test-framework=jasmine --template-framework=handlebars 
throws error
 yo backbone

     _-----_
    |       |
    |--(o)--|   .--------------------------.
   `---------´  |    Welcome to Yeoman,    |
    ( _´U`_ )   |   ladies and gentlemen!  |
    /___A___\   '__________________________'
     |  ~  |
   __'.___.'__
 ´   `  |° ´ Y `

Out of the box I include HTML5 Boilerplate, jQuery, Backbone.js and Modernizr.
[?] What more would you like? Use CoffeeScript, Use RequireJs

```





```
#DOM ready
$ ->
  'use strict'
  window.App = App.init()
  new App.Routers.AppRouter()
  Backbone.history.start()
```

### 3.1 MVVM Pattern

Generally in a single page application (SPA) you create modules that contain a set of functionality, such as a view to display data, a model to store data and a controller to manage the relationship between the two and handle the business logic.

The model-view-view-model pattern attempts to gain both the advantages of separation of functional development provided by MVC as well as leveraging the advantages of data bindings and the framework


The result is that the model and framework drive as much of the operations as possible, eliminating or minimizing application logic which directly manipulates the view. 


Elements of the MVVM pattern include:

* **Model**: as in the classic MVC pattern, the model refers to either (a) a domain model which represents the real state content (an object-oriented approach), or (b) the data access layer that represents that content (a data-centric approach).

* **View**: as in the classic MVC pattern, the view refers to all elements displayed by the GUI such as buttons, labels, and other controls.

* **View model**: the view model is a “model of the view” meaning it is an abstraction of the view that also serves in mediating between the view and the model which is the target of the view data bindings.

* **Controller**: some references for MVVM also include a controller layer or illustrate that the view model is a specialized functional set in parallel with a controller, while others do not. 

### 3.2 Presentation Tier

The presentation layer will handle displaying data to the user and allow the user to manipulate data, the application will use BackboneJS as the client-side library of choice to manage the applications data. 


### 3.3 Middle tier - Alternative Setup

The software in the middle tier is often called the application tier, it controls the application's functionality by performing the detailed processing that run the application. The middle tier solution for this project will be Heroku, which is a cloud application platform used to build scalable network applications.

Heroku features:

*	Supports Ruby, Node.js, Python, and Java
*	Scalable cloud based architecture
*	Over 100 add-on technologies
*	Toolbelt and monitoring dashboard




#### 3.3.1 Heroku - Getting Started


To leverage the cloud application platform that Heroku provides follow these instructions.

Steps:

1.	Sign up - You must have a account before using to sign up for a Heroku account visit https://heroku.com.
2.	Toolbelt - You need to install the 'heroku toolbelt', which consists of:
	*	Heroku client - CLI tool for creating and managing apps on Heroku.com.
	*	Foreman - A tool for running apps locally.
	*	Git - A revision control tool that pushes to Heroku.com Visit https://toolbelt.heroku.com to download

3.	Login - After installing the 'heroku toolbelt' open the your command shell and do the following:
	*	Enter command - $ heroku login
	*	Enter email address you signed up with
	*	Enter password you signed up with
	*	Answer the questions when prompted
	*	Done for now

We are going to be using NodeJS because it offers a built-in HTTP web server that can handle serving our application just fine.

NodeJS features:

* JavaScript is its scripting language.
* Event-driven and non-blocking I/O model.
* Single-threaded with built in HTTP server.

### 3.4 Data tier - Alternative Setup

This tier keeps data stored in the cloud and independent from the application servers or business logic, which improves scalability and performance.



#### 3.4.1 Parse.com Setup

A alternative setup would be to use Parse.com as the backend data store, they have a JavaScript library that allows dyanmic modal storage, user authentication, roles and file upload handling.

To setup the Middle-tier provider:

1.	Login or Sign up at Parse.com.
2.	Create a new Parse application.
3.	Include the Parse.com JavaScript library.
4.	Configure the API with application credentials.
5.	Use the library.

The Parse Cloud handles your entire backend so your team can focus on making an engaging user experience. Don’t worry about databases, performance, or scaling.

### 3.5 Application Anatomy
This is the anatomy of the application.

#### 3.5.1 Index
This is the index view.


```

Code Here

```

##### 3.5.1.1 Posts
This is the posts view.

```

Code Here

```

##### 3.5.1.2 Post Detail
This is the post detail view


```

Code Here

```

### Application Object
This is about the backbone application object.


```  
Backbone.View::close = ->
  console.log('Backbone.View.close()', @)
  @remove()
  @unbind()
  @onClose() if @onClose
  
class View extends Backbone.View
  @constructor: () ->
    console.log 'View init', @
    
class Model extends Backbone.Model
  @constructor: () ->
    console.log 'Model init', @   
    
class Collection extends Backbone.Collection
  @constructor: () ->
    console.log 'Collection init', @    
    
class Router extends Backbone.Router
  @constructor: () ->
    console.log 'Router init', @      
```


This is how to setup a app global.

```
window.App =
  Model: Model
  Models: {}
  Collection: Collection
  Collections: {}
  View: View
  Views: {}
  Router: Router
  Routers: {}
  session: {}
  debug: true
  init: ->
    @log 'Hello from Backbone!', @
    return @
  
  log: (args) ->
    console.log args, arguments if @debug
    
  #Method to help cleanup zombie views
  showView: (view) ->
    @log('show view',@currentView, view)
    
    @currentView.close() if @currentView
    @currentView = view
    @currentView.render()
    
    $('.pages').html(@currentView.$el)   
```


#### Testing App


```
  describe 'the window.App global', ->
    it 'should have session property', ->
      expect( App.session ).toBeDefined
    
    it 'should have Collections property', ->
      expect( App.Collections ).toBeDefined
      
    it 'should have Models property', ->
      expect( App.Models ).toBeDefined
      
    it 'should have Routers property', ->
      expect( App.Routers ).toBeDefined
      
    it 'should have Views property', ->
      expect( App.Views ).toBeDefined  
```



###2.2 Backbone.Events
Events is a module that can be mixed in to any object, giving the object the ability to bind and trigger custom named events. Events do not have to be declared before they are bound, and may take passed arguments. For example:

#### 2.2.1 Creating Events
This is about creating events.

#### 2.2.2 Using Events
This is about using events.

#### 2.2.3 Testing Events
This is about testing events.



###2.3 Backbone.Model

Models are the heart of any JavaScript application, containing the interactive data as well as a large part of the logic surrounding it: conversions, validations, computed properties, and access control. You extend Backbone.Model with your domain-specific methods, and Model provides a basic set of functionality for managing changes.

The following is a contrived example, but it demonstrates defining a model with a custom method, setting an attribute, and firing an event keyed to changes in that specific attribute. After running this code once, sidebar will be available in your browser's console, so you can play around with it.


#### 2.3.1 Creating Models
This is how to create a model.

```
###
ViewModel - This acts as the view model model view
###
class App.Models.PostsViewModel extends App.Model
  #model: App.Models.PostModel
  defaults: 
    results: []
  url: () ->
    'http://jonniespratley.me:8181/api/v2/angular-cms/posts'
  parse : (response) ->
    @set( results: response )
    @trigger('posts:fetch:complete', response)
    return response
```

##### Post Model
This is the post model which represents 1 single post.
  
```
###
Model - This acts as a single model entity.
###
class App.Models.PostModel extends App.Model
  url: ->
    'http://jonniespratley.me:8181/api/v2/angular-cms/posts/'+ @id
    
  defaults:
    id: 0
    title: 'Post Title'
    slug: 'post-title'
    image: 'http://placehold.it/150x150&text=Image'
    tags: ['Post']
    body: 'This is an example post with default data.'
  init: () ->
    App.log('Model init:',@)
  success: (data) ->
    App.log(data)
  parse : (response) ->
    App.log('Model parse:', response)
    #@set( response )
    response.id = response._id
    return response
```

#### 2.3.2 Using Models
This is how to use a model.

```

```


#### 2.3.3 Testing Models
This is how to test a model.

```
 ###
  PostModel Tests    
  ###
  describe 'PostModel', ->
    beforeEach( ->
      postModel = new App.Models.PostModel(id: 1)
    )
    
    it 'should have a default title', () ->
      expect(postModel.get('title')).toEqual('Post Title')
      
    it 'should have a default slug', () ->
      expect(postModel.get('slug')).toEqual('post-title')
    
    it 'should have a default image', () ->
      expect(postModel.get('image')).toEqual('http://placehold.it/150x150&text=Image')
      
    it 'should have a default tag', () ->
      expect(postModel.get('tags')).toEqual(['Post'])
    
    it 'should have url set to http://jonniespratley.me:8181/api/v2/angular-cms/posts/1', ->
      expect(postModel.url()).toEqual('http://jonniespratley.me:8181/api/v2/angular-cms/posts/1')
      
    it 'should fetch data from the server', ->
      #

```



###2.4 Backbone.Collection

Collections are ordered sets of models. You can bind "change" events to be notified when any model in the collection has been modified, listen for "add" and "remove" events, fetch the collection from the server, and use a full suite of Underscore.js methods.

Any event that is triggered on a model in a collection will also be triggered on the collection directly, for convenience. This allows you to listen for changes to specific attributes in any model in a collection, for example: documents.on("change:selected", ...)


#### 2.4.1 Creating Collections
This is how to create a collection.

```
    
###
ViewModel - This acts as the view model model view
###
class App.Collections.PostsCollection extends App.Collection
  #localStorage: new Backbone.LocalStorage('PostsCollection')
  model: App.Models.PostModel
  url: ->
    'http://jonniespratley.me:8181/api/v2/angular-cms/posts'
  parse : (response) ->
    @trigger('posts:fetch:complete')
    return response
     
    
```

#### 2.4.2 Using Collections
This is how to use a collection.

```

```


#### 2.4.3 Testing Collections
This is how to test a collection.


```
 ###
  PostsCollection Tests
  ###
  describe 'PostsCollection', ->
    beforeEach( ->
      postsCollection = new App.Collections.PostsCollection()
    )
    
    it 'should have url set to http://jonniespratley.me:8181/api/v2/angular-cms/posts', ->
      expect(postsCollection.url()).toEqual('http://jonniespratley.me:8181/api/v2/angular-cms/posts')
      
    it 'should fetch data from the server', ->
  
  

```


###2.5 Backbone.View

Backbone views are almost more convention than they are code — they don't determine anything about your HTML or CSS for you, and can be used with any JavaScript templating library. The general idea is to organize your interface into logical views, backed by models, each of which can be updated independently when the model changes, without having to redraw the page. Instead of digging into a JSON object, looking up an element in the DOM, and updating the HTML by hand, you can bind your view's render function to the model's "change" event — and now everywhere that model data is displayed in the UI, it is always immediately up to date.



#### 2.5.1 Creating Views
This is how to create a view.
 
 
##### ListView
 
``` 
###
ListView - This represents a entire list.
###
class App.Views.ListView extends App.View
  #el: '.item-list'
  tagName: 'section'
  events: 
    'keyup input' : 'searchHandler'
    'click button': 'refresh'
  
  #Initializes the view and model.
  initialize: () ->
    _.bindAll(@, "render")
    @childViews = []
    
    #Collection
    if @collection is null
      console.log 'No collection, creating a new one'
      @collection = new App.Collections.PostsCollection
      @collection.fetch(dataType: 'jsonp')
    #@collection.bind('add', @render)
    
    @listenTo(@collection, 'add', @renderOne)
    @listenTo(@collection, 'reset', @renderAll)
      #@collection.bind('posts:fetch:complete', @render)
    @render
    console.log @
  
  #Renders the template.
  render: () ->
    console.log 'render called'
    html = Mustache.render($('#list-tmpl').text(), @collection.toJSON())
    @$el.html($('#list-tmpl').text())
    
    return @$el  
  
  #Render 1 item 
  renderOne: (item) ->
    itemView = new App.Views.ListItemView(model: item)
    $(@el).find('.posts').append(itemView.render())
    console.log item
    @childViews.push(itemView)
  
  #Render all items by looping each item in collection
  renderAll:() ->
    console.log 'renderAll'
    @collection.each(@renderOne, @)
  #Handle when the view is closed and remove each child view
  onClose: ->
    _(@childViews).each (view) ->
      view.close()
  
  #Handles when a button is clicked.
  searchHandler: (e) ->
    #@collection = @collection.where title:$(e.currentTarget).val()
    
    App.log @collection, $(e.currentTarget).val()
  #Handle resetting the collection and fetching data again
  refresh: () ->
    @render
    @collection.reset()
    @collection.fetch(dataType: 'jsonp')
```

##### ListView Test

```
###
ListView Tests
###
describe 'ListView', () ->
  it 'should render a ol element', () ->
    #
  it 'should render ListItemView as children', () ->
    #
```


##### ListItemView
This is how to create a child view.

```
###
ListItemView - This represents an individual list item.
###
class App.Views.ListItemView extends App.View
  className: 'list-group-item'
  #Tag to wrap view in
  tagName: 'li'
  #Events listening for
  events: 
    'click li': 'itemClickHandler'
  
  #Setup event binding
  initialize: () ->
    _.bindAll(@, "render")
    console.log('ListItemView', @)
    @model.bind("change", @render, @)
    @model.bind("destroy", @close, @)
  
  #Handle injecting template
  render: () ->
    return Mustache.render($('#list-item-tmpl').text(), @model.toJSON())
    
  #Handle when a item is clicked
  itemClickHandler: (e) ->
    App.log(@)

```

##### ListItemView Test

```
###
ListItemView Tests
###
describe 'ListItemView', () ->
  it 'should render a li element', () ->
    #
  it 'should listen for a click event', () ->
    #

```


##### ListItemDetailView

```
###
App.Views.ListItemDetailView - This represents an individual list item.
###
class App.Views.ListItemDetailView extends App.View
  #el: '.item-detail'
  
  #Tag to wrap view in
  tagName: 'div'
  
  #Events listening for
  events: 
    'click li': 'itemClickHandler'
  
  #Setup event binding
  initialize: () ->
    _.bindAll(@, "render")
    console.log('ListItemDetailView', @)
    @model.bind("change", @render, @)
    @model.bind("destroy", @close, @)
  
  #Handle injecting template
  render: () ->
    html = Mustache.render($('#list-item-detail-tmpl').text(), @model.toJSON())
    @$el.html(html)

```

##### ListItemDetailView Test

```
### 
ListItemDetailView Tests
###
describe 'ListItemDetailView', () ->
  beforeEach( ->
    @postModel = new App.Models.PostModel(id: 1)
    @postDetail = new App.Views.ListItemDetail(model: @postModel)
    #@@App.showView(@postDetail)
  )
  
  afterEach( ->
    @postModel = null
    @postDetail = null
  )
  
  it 'should render a detail view', () ->
    #
  it 'should contain a model', () ->
    #
  
```

#### 2.5.2 Using Views
This is how to use views.

##### Index View


```
 <body id="app">
    <section class="container">
      <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">Backbone App</a>
          </div>
        </div>
      </div>
      <ol class="breadcrumb">
        <li>
          <a href="#/">Home</a>
        </li>
        <li class="active">Posts</li>
      </ol>
      <div id="pages" class="pages">
        <div class="item-list"></div>
        <div class="item-detail"></div>
      </div>
      <footer class="footer">
        <hr />
        <p>© 2014</p>
      </footer>
    </section>
    </body>
```    

##### ListView

```
   <script id="list-tmpl" type="text/template">
        <ol class="media-list posts list-group"></ol>
    </script>
```

##### ListItemView

```
    <script id="list-item-tmpl" type="text/template">
  		<li class="media post" data-id="{{_id}}">
        <a class="pull-left" href="#/posts/{{_id}}">
          <img class="media-object img-thumbnail" src="{{ image }}" alt="{{ title }}"/>
        </a>
        <div class="media-body">
          <h4 class="media-heading">{{ title }}</h4>
          <p>{{ body }}</p>
        </div>
      </li>
    </script>
```

##### ListItemDetailView


```
	<script id="list-item-detail-tmpl" type="text/template">
      <article class="row">
        <section class="col-xs-8 col-sm-9 col-md-9">
          <h2>{{ title }}</h2>
          <p>{{ body }}</p>
          <p>{{tags}}</p>
        </section>
          <aside class="col-xs-4 col-sm-3 col-md-3">
            <div class="tc">
              <img class="img-thumbnail" src="{{ image }}" alt="{{ title }}"/>
            </div>
        </aside>
      </article>
    </script>
```

### 2.6 Backbone.Router
Web applications often provide linkable, bookmarkable, shareable URLs for important locations in the app. Until recently, hash fragments (#page) were used to provide these permalinks, but with the arrival of the History API, it's now possible to use standard URLs (/page). Backbone.Router provides methods for routing client-side pages, and connecting them to actions and events. For browsers which don't yet support the History API, the Router handles graceful fallback and transparent translation to the fragment version of the URL.

During page load, after your application has finished creating all of its routers, be sure to call Backbone.history.start(), or Backbone.history.start({pushState: true}) to route the initial URL.



#### 2.6.1 Creating Routers
This is how to create routers.




	class App.Routers.AppRouter extends App.Router
	 
	 #All registered routes
	 routes: 
	   '': 'index'
	   'posts': 'postsRoute'
	   'posts/:id': 'postDetailRoute'
	   
	 #Handle rendering default routes
	 index: () ->
	   @postsRoute()
	 
	 #Handle rendering the posts route
	 postsRoute: () ->
	   App.session.posts = new App.Collections.PostsCollection() unless App.session.posts
	   App.log(App.session.posts.length)
	   
	   #App.session.posts = new App.Models.PostsCollection();
	   if App.session.posts
	     App.session.posts.fetch( dataType: 'jsonp') 
	   
	   postsList = new App.Views.ListView( collection: App.session.posts )
	   App.showView(postsList)  
	 
	 #Handle post detail view
	 postDetailRoute: (id) ->
	   App.session.post = App.session.posts.findWhere({_id: id})
	   postDetail = new App.Views.ListItemDetailView( model: App.session.post )
	   
	   App.showView(postDetail)
	   App.log('Get post ' + id )


#### 2.6.2 Using Routers
This is how to use routers.

```
#DOM ready
$ ->
  'use strict'
  App.init()
  new App.Routers.AppRouter()
  Backbone.history.start()
```


#### 2.6.3 Testing Routers
This is how to test routers.

```
###
  Router
  describe 'Router', () ->
    
    beforeEach ->
      # Create a new router
      @router = new App.Routers.AppRouter()
      
      # Create a new spy
      @routerSpy = jasmine.createSpy()
      
      spyOn(@router, 'index').andCallThrough()
      
      # Begin monitoring hashchange events
      try
        Backbone.history.start
          silent: true
          pushState: true
          
      @router.navigate ""
      
    afterEach ->
      # Navigate back to the URL
      @router.navigate ""
      
      # Disable Backbone.history temporarily.
      # Note that this is not really useful in real apps but is
      # good for testing routers
      Backbone.history.stop()
    
    it "should call the index route correctly", ->
      @router.bind "route:index", @routerSpy, @
      @router.navigate "",
        trigger: true
      expect(@routerSpy).toHaveBeenCalled()
###
```



## Summary
This is the summary

