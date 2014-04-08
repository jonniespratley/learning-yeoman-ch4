define(['collections/posts'],(PostsCollection) ->
	postsCollection = null
	
	describe 'Post Collection:', ->
		beforeEach ->
			spyOn($, "ajax").andCallFake (options) ->
				options.success()
			postsCollection = new PostsCollection()

		it 'should send a GET request', ->
			postsCollection.fetch()
			request = $.ajax.mostRecentCall.args[0]
			expect(request.url).toEqual('/api/v2/learning-yeoman-ch3/posts');
			expect(request.type).toEqual('GET')
			

)	