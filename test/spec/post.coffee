define(['models/post'],(PostModel) ->
	describe 'PostModel:', ->
		postModel = null
		newModel = null
		
		beforeEach ->
			postModel = new PostModel()
			spyOn($, "ajax").andCallFake (options) ->
				options.success()
		
		it 'should have default attributes (title, slug, image, tags)', ->
			expect(postModel.get('title')).toEqual('Post Title')
			expect(postModel.get('slug')).toEqual('post-title')
			expect(postModel.get('published')).toEqual(true)
			expect(postModel.get('body')).toEqual('This is an example post with default data.')
			expect(postModel.get('image')).toEqual('http://placehold.it/150x150&text=Image')
			expect(postModel.get('tags')).toEqual('featured')
		
		it 'should set attributes (title, slug, image, tags)', ->
			postModel = new PostModel(title: 'NewPost', image: '', tags: 'jasmine')
			expect(postModel.get('title')).toEqual('NewPost');
			expect(postModel.get('image')).toEqual('');
			expect(postModel.get('tags')).toEqual('jasmine');

		describe('CRUD', ->
			it 'should send a POST (/api/v2/learning-yeoman-ch3/posts)', ->
				postModel.save()
				request = $.ajax.mostRecentCall.args[0]
				expect(request.url).toEqual('/api/v2/learning-yeoman-ch3/posts');
				expect(request.type).toEqual('POST')
				
				#
			it 'should send a PUT (/api/v2/learning-yeoman-ch3/posts/1)', ->
				newModel = new PostModel(_id: 1, title: 'Jasmine Test', body: 'This was created in a spec')
				newModel.save()
				
				request = $.ajax.mostRecentCall.args[0]
				
				expect(request.url).toEqual('/api/v2/learning-yeoman-ch3/posts/1');
				expect(request.type).toEqual('PUT')
	
			it 'should send a DELETE (/api/v2/learning-yeoman-ch3/posts/1)', ->
				newModel.destroy()
				
				request = $.ajax.mostRecentCall.args[0]
				
				expect(request.url).toEqual('/api/v2/learning-yeoman-ch3/posts/1');
				expect(request.type).toEqual('DELETE')	
		)
)	