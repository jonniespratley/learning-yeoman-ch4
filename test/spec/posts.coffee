define(['collections/posts'],(PostsCollection) ->
	postsCollection = null
	
	describe 'Post Collection:', ->
		beforeEach ->
			postsCollection = new PostsCollection()

		it 'should ...', ->

		it 'should have url set to http://jonniespratley.me:8181/api/v2/learning-yeoman/posts', ->
			#expect(postsCollection.url()).toEqual('http://jonniespratley.me:8181/api/v2/angular-cms/posts')
		
		it 'should fetch data from the server', ->


)	