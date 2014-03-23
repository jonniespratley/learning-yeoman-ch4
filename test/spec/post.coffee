define(['models/post'],(PostModel) ->
	describe 'Post Model:', ->
		postModel = null
		beforeEach ->
			postModel = new PostModel() 
		
		it 'should have default attribute values (title, slug, image, tags)', ->
			expect(postModel.get('title')).toEqual('Post Title')
			expect(postModel.get('slug')).toEqual('post-title')
			expect(postModel.get('body')).toEqual('This is an example post with default data.')
			expect(postModel.get('image')).toEqual('//placehold.it/150x150&text=Image')
			expect(postModel.get('tags')).toEqual('featured')
		
		it 'should set object passed on attributes (title, image, tags)', ->
			postModel = new PostModel(title: 'NewPost', image: '', tags: 'jasmine')
			expect(postModel.get('title')).toEqual('NewPost');
			expect(postModel.get('image')).toEqual('');
			expect(postModel.get('tags')).toEqual('jasmine');

		it 'should POST to create', ->
			#
		it 'should PUT to update', ->
			#
)	