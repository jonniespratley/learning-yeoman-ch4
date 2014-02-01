###
Backbone App Tests
###
describe "Testing a Backbone App", ->
  postsCollection = null
  postModel = null
  @router = null
  @routerSpy = null
  @fixture = $('<div id="jasmine-app"></div>')
  @sandbox = sandbox()
  
  beforeEach(()->
    setFixtures(@sandbox)
    App = App.init()
  )
  
  
  ###
  App Tests
  ###
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
    
  ###
  ListView Tests
  ###
  describe 'ListView', () ->
    it 'should render a ol element', () ->
      #
    it 'should render ListItemView as children', () ->
      #
  ###
  ListItemView Tests
  ###
  describe 'ListItemView', () ->
    it 'should render a li element', () ->
      #
    it 'should listen for a click event', () ->
      #
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
    
      
