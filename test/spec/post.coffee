define(['models/post'],(PostModel) ->
	postModel = null
	
	describe 'Post Model:', ->
		beforeEach ->
			postModel = new PostModel()

		it 'should have nice defaults (title, slug, image, tags)', ->
			expect(postModel.get('title')).toEqual('Post Title')
			expect(postModel.get('slug')).toEqual('post-title')
			expect(postModel.get('image')).toEqual('//placehold.it/150x150&text=Image')
			expect(postModel.get('tags')).toEqual(['Post'])
)	