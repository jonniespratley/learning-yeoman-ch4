define(() ->
	return Config =
		baseurl: document.location.origin
		sitetitle: "Learning Yeoman"
		sitedesc: "a starting point for a modern backbone.js application."
		sitecopy: "2014 Copywrite"
		version: '0.0.1'
		email: "admin@email.com"
		debug: true	
		feature: 
			image: 'http://goo.gl/fOq55C'
			title: 'Chapter 4'
			body: 'A starting point for a modern backbone.js application.'

		features: [
			id: 1, title: "HTML5", body: "Using HTML5 for better user experience", image: "https://dl.dropboxusercontent.com/u/26906414/cdn/img/learning-yeoman/feature-html5.png"
		,
			id: 2, title: "BackboneJS", body: "Framework of choice is Backbone.js", image: "https://dl.dropboxusercontent.com/u/26906414/cdn/img/learning-yeoman/feature-backbone.png"
		,
			id: 3, title: "Twitter Bootstrap", body: "UI is Twitter Bootstrap 3.0.", image: "https://dl.dropboxusercontent.com/u/26906414/cdn/img/learning-yeoman/feature-bootstrap.png"
		]
		session: 
			authorized: false
			user: null
		layout: 
			header: "views/_header.html"
			sidebar: "views/_sidebar.html"
			content:"views/_content.html"
			footer: "views/_footer.html"
		menu: [
			title: "Home" 
			href: "/home"
		,
			title: "About" 
			href: "/about"
		,
			title: "Posts" 
			href: "/posts"
		]

	
)