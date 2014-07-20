define('templates',['handlebars'], function(Handlebars) {

this["JST"] = this["JST"] || {};

this["JST"]["app/scripts/templates/about.hbs"] = Handlebars.template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  var buffer = "", stack1, functionType="function", escapeExpression=this.escapeExpression;


  buffer += "<div class=\"page-header\">\n	<h1>";
  if (stack1 = helpers.title) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.title; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "</h1>\n</div>\n<p>Your content here.</p>\n\n";
  return buffer;
  });

this["JST"]["app/scripts/templates/app.hbs"] = Handlebars.template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  var buffer = "", stack1, functionType="function", escapeExpression=this.escapeExpression, self=this;

function program1(depth0,data) {
  
  var buffer = "", stack1;
  buffer += "\n				<li>\n					<a href=\"#";
  if (stack1 = helpers.href) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.href; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\">";
  if (stack1 = helpers.title) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.title; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "</a>\n				</li>\n			";
  return buffer;
  }

  buffer += "<article id=\"app\" class=\"container\">\n	<header id=\"header\" class=\"header\">\n		<ul class=\"nav nav-pills pull-right\">\n			";
  stack1 = helpers.each.call(depth0, depth0.menu, {hash:{},inverse:self.noop,fn:self.program(1, program1, data),data:data});
  if(stack1 || stack1 === 0) { buffer += stack1; }
  buffer += "\n		</ul>\n		<h3 class=\"brand text-muted\">";
  if (stack1 = helpers.sitetitle) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.sitetitle; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "</h3>\n		<hr/>\n	</header>\n	<section id=\"content\" class=\"content\"></section>\n	<footer id=\"footer\" class=\"footer\">\n		<hr/>\n		<span class=\"app-sitecopy pull-left\">";
  if (stack1 = helpers.sitecopy) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.sitecopy; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "</span>\n		<span class=\"app-version pull-right\">";
  if (stack1 = helpers.version) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.version; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "</span>\n	</footer>\n</article> ";
  return buffer;
  });

this["JST"]["app/scripts/templates/main.hbs"] = Handlebars.template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  var buffer = "", stack1, stack2, functionType="function", escapeExpression=this.escapeExpression, self=this;

function program1(depth0,data) {
  
  var buffer = "", stack1;
  buffer += "\n			<li class=\"media feature\">\n				<a class=\"pull-left\" href=\"#\">\n					<img alt=\"";
  if (stack1 = helpers.title) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.title; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\" src=\"";
  if (stack1 = helpers.image) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.image; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\" class=\"media-object\"/>\n				</a>\n				<div class=\"media-body\">\n					<h4 class=\"media-heading\">";
  if (stack1 = helpers.title) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.title; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "</h4>\n					<p>";
  if (stack1 = helpers.body) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.body; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "</p>\n				</div>\n			</li>\n		";
  return buffer;
  }

  buffer += "<div class=\"jumbotron hero-unit\">\n	<h1>"
    + escapeExpression(((stack1 = ((stack1 = depth0.feature),stack1 == null || stack1 === false ? stack1 : stack1.title)),typeof stack1 === functionType ? stack1.apply(depth0) : stack1))
    + "</h1>\n	<img src=\""
    + escapeExpression(((stack1 = ((stack1 = depth0.feature),stack1 == null || stack1 === false ? stack1 : stack1.image)),typeof stack1 === functionType ? stack1.apply(depth0) : stack1))
    + "\" class=\"img-\"/>\n	<p class=\"lead\">\n		"
    + escapeExpression(((stack1 = ((stack1 = depth0.feature),stack1 == null || stack1 === false ? stack1 : stack1.body)),typeof stack1 === functionType ? stack1.apply(depth0) : stack1))
    + "\n	</p>\n</div>\n<div class=\"marketing\">\n	<ul class=\"media-list\">\n		";
  stack2 = helpers.each.call(depth0, depth0.features, {hash:{},inverse:self.noop,fn:self.program(1, program1, data),data:data});
  if(stack2 || stack2 === 0) { buffer += stack2; }
  buffer += "\n	</ul>\n</div>";
  return buffer;
  });

this["JST"]["app/scripts/templates/post-detail.hbs"] = Handlebars.template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  var buffer = "", stack1, functionType="function", escapeExpression=this.escapeExpression;


  buffer += "<ol class=\"breadcrumb\">\n	<li>\n		<a href=\"#\">Home</a>\n	</li>\n	<li>\n		<a href=\"#/posts\">Posts</a>\n	</li>\n	<li class=\"active\">\n		";
  if (stack1 = helpers.title) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.title; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\n	</li>\n</ol>\n\n<div class=\"pull-right actions\">\n	<div class=\"btn-\">\n		<a href=\"#/posts/";
  if (stack1 = helpers._id) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0._id; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "/edit\" class=\"btn btn-default btn-m edit\">\n			Edit\n		</a>\n		<a href=\"#/posts/";
  if (stack1 = helpers._id) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0._id; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "/delete\" class=\"btn btn-danger btn-m delete\">\n			Delete\n		</a>\n	</div>\n</div>\n<div class=\"page-header\">\n	<h1>";
  if (stack1 = helpers.title) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.title; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "</h1>\n</div>\n\n<div class=\"row\">\n	<div class=\"col-xs-7 col-sm-8\">\n		";
  if (stack1 = helpers.body) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.body; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\n	</div>\n	<div class=\"col-xs-5 col-sm-4\">\n		<aside class=\"well well-sm\">\n			<img src=\"";
  if (stack1 = helpers.image) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.image; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\" class=\"img-placeholder\"/>\n		</aside>\n	</div>\n</div>";
  return buffer;
  });

this["JST"]["app/scripts/templates/post-form.hbs"] = Handlebars.template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  var buffer = "", stack1, functionType="function", escapeExpression=this.escapeExpression, self=this;

function program1(depth0,data) {
  
  
  return "\n		<h1>Edit Post</h1>\n	";
  }

function program3(depth0,data) {
  
  
  return "\n		<h1>New Post</h1>\n	";
  }

  buffer += "\n<ol class=\"breadcrumb\">\n	<li>\n		<a href=\"#\">Home</a>\n	</li>\n	<li>\n		<a href=\"#/posts\">Posts</a>\n	</li>\n	<li class=\"active\">\n		Edit\n	</li>\n</ol>\n\n<div class=\"pull-right\">\n	<a href=\"#/posts/";
  if (stack1 = helpers._id) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0._id; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\" class=\"btn btn-default cancel\"> Cancel </a>\n\n	<button class=\"btn btn-primary save\" type=\"button\">\n		Save\n	</button>\n	\n</div>\n<div class=\"page-header\">\n	";
  stack1 = helpers['if'].call(depth0, depth0._id, {hash:{},inverse:self.program(3, program3, data),fn:self.program(1, program1, data),data:data});
  if(stack1 || stack1 === 0) { buffer += stack1; }
  buffer += "\n</div>\n<div class=\"row\">\n	<div class=\"col-xs-7 col-sm-8\">\n		<form class=\"form-horizontal\" role=\"form\">\n			<div class=\"form-group\">\n				<label for=\"title\" class=\"col-sm-3 control-label\">Title:</label>\n				<div class=\"col-sm-9\">\n					<input type=\"text\" class=\"form-control\" id=\"inputTitle\" placeholder=\"Enter a Title\" name=\"title\" value=\"";
  if (stack1 = helpers.title) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.title; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\">\n				</div>\n			</div>\n			<div class=\"form-group\">\n				<label for=\"slug\" class=\"col-sm-3 control-label\">Slug:</label>\n				<div class=\"col-sm-9\">\n					<input type=\"text\" class=\"form-control\" id=\"inputSlug\" name=\"slug\" value=\"";
  if (stack1 = helpers.slug) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.slug; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\" disabled=\"\">\n				</div>\n			</div>\n			<div class=\"form-group\">\n				<label for=\"body\" class=\"col-sm-3 control-label\">Body:</label>\n				<div class=\"col-sm-9\">\n					<textarea class=\"form-control\" rows=\"5\" id=\"inputBody\" placeholder=\"Enter some contents.\" name=\"body\">";
  if (stack1 = helpers.body) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.body; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "</textarea>\n				</div>\n			</div>\n			<div class=\"form-group\">\n				<label for=\"image\" class=\"col-sm-3 control-label\">Image:</label>\n				<div class=\"col-sm-9\">\n					<input type=\"url\" class=\"form-control\" id=\"inputImage\" placeholder=\"Enter a URL\" name=\"image\" value=\"";
  if (stack1 = helpers.image) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.image; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\">\n				</div>\n			</div>\n			<!--div class=\"form-group\">\n				<div class=\"col-sm-offset-2 col-sm-10\">\n				<div class=\"pull-right\">\n					<a href=\"#/posts/";
  if (stack1 = helpers._id) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0._id; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\" class=\"btn btn-default cancel\"> Cancel </a>\n					<button class=\"btn btn-primary\" type=\"submit\">\n						Submit\n					</button>\n				</div>\n				</div>\n			</div-->\n		</form>\n	</div>\n	<div class=\"col-xs-5 col-sm-4\">\n		<aside class=\"well well-sm\">\n			<img src=\"";
  if (stack1 = helpers.image) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.image; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\" class=\"img-placeholder\"/>\n		</aside>\n	</div>\n</div>";
  return buffer;
  });

this["JST"]["app/scripts/templates/post-header.hbs"] = Handlebars.template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  var buffer = "", stack1, functionType="function", escapeExpression=this.escapeExpression;


  buffer += "<div class=\"header\">\n	<a href=\"\" ng-click=\"view(post._id)\">\n		<h1 class=\"media-heading\">"
    + escapeExpression(((stack1 = ((stack1 = depth0.post),stack1 == null || stack1 === false ? stack1 : stack1.title)),typeof stack1 === functionType ? stack1.apply(depth0) : stack1))
    + "</h1>\n	</a>\n	<span>Posted on "
    + escapeExpression(((stack1 = ((stack1 = depth0.post),stack1 == null || stack1 === false ? stack1 : stack1.created)),typeof stack1 === functionType ? stack1.apply(depth0) : stack1))
    + "</span> |\n	<a href=\"\" class=\"btn btn-xs btn-default edit\">\n		<i class=\"glyphicon glyphicon-pencil\"></i> EDIT\n	</a>\n</div>";
  return buffer;
  });

this["JST"]["app/scripts/templates/post.hbs"] = Handlebars.template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  var buffer = "", stack1, functionType="function", escapeExpression=this.escapeExpression;


  buffer += "<div class=\"media\">\n	<a class=\"pull-left\" href=\"#/posts/";
  if (stack1 = helpers._id) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0._id; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\" data-cid=\"";
  if (stack1 = helpers.cid) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.cid; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\">\n	  <img class=\"media-object img-thumbnail\" src=\"";
  if (stack1 = helpers.image) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.image; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\" alt=\"";
  if (stack1 = helpers.title) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.title; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "\"/>\n	</a>\n	<div class=\"media-body clearfix\">\n		<div class=\"header\">\n			<a href=\"\" ng-click=\"view(post._id)\">\n				<h1 class=\"media-heading\">";
  if (stack1 = helpers.title) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.title; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "</h1>\n			</a>\n			<span>Posted on ";
  if (stack1 = helpers.created) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.created; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "</span> |\n			<a href=\"\" class=\"btn btn-xs btn-default edit\">\n				<i class=\"glyphicon glyphicon-pencil\"></i> EDIT\n			</a>\n		</div>\n		\n		\n\n	  <p>";
  if (stack1 = helpers.body) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = depth0.body; stack1 = typeof stack1 === functionType ? stack1.apply(depth0) : stack1; }
  buffer += escapeExpression(stack1)
    + "</p>\n	</div>\n</div>";
  return buffer;
  });

this["JST"]["app/scripts/templates/posts.hbs"] = Handlebars.template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  


  return "<!---->\n<ol class=\"breadcrumb\">\n  <li><a href=\"#\">Home</a></li>\n  <li class=\"active\">Posts</li>\n</ol>\n\n\n<div class=\"pull-right\">\n	<a href=\"#/posts/new\" class=\"btn btn-default\">Add New</a>\n</div>\n<div class=\"page-header\">\n	<h1>Posts</h1>\n</div>\n\n";
  });

return this["JST"];

});
define('app',['jquery', 'underscore', 'backbone', 'handlebars', 'templates'], function($, _, Backbone, Handlebars, JST) {
  var App;
  App = App || {};
  App.Config || (App.Config = {});
  App.Models || (App.Models = {});
  App.Collections || (App.Collections = {});
  App.Routers || (App.Routers = {});
  App.Views || (App.Views = {});
  App.Templates || (App.Templates = {});
  App.bootstrap = function(config, router) {
    if (config) {
      this.config = config;
    }
    if (router) {
      this.router = new router();
      Backbone.history.start();
    }
    return this;
  };
  App.log = function() {
    if (this.debug) {
      return typeof console !== "undefined" && console !== null ? console.log(arguments) : void 0;
    }
  };
  App.pubsub = _.extend({}, Backbone.Events);
  App.pubsub.bind('fetch:posts', function(data) {
    return alert(data);
  });
  return App;
});

define('config',[],function() {
  return window.Config = {
    baseurl: document.location.origin,
    sitetitle: "Learning Yeoman",
    sitedesc: "a starting point for a modern backbone.js application.",
    sitecopy: "2014 Copywrite",
    version: '0.0.1',
    email: "admin@email.com",
    debug: true,
    feature: {
      image: 'http://goo.gl/fOq55C',
      title: 'Chapter 4',
      body: 'A starting point for a modern backbone.js application.'
    },
    features: [
      {
        title: "CoffeeScript",
        body: "CoffeeScript is a little language that compiles into JavaScript...",
        image: "http://goo.gl/DTiliC"
      }, {
        title: "BackboneJS",
        body: "Backbone.js gives structure to web applications by providing...",
        image: "https://dl.dropboxusercontent.com/u/26906414/cdn/img/learning-yeoman/feature-backbone.png"
      }, {
        title: "RequireJS",
        body: "RequireJS is a JavaScript file and module loader...",
        image: "http://goo.gl/GOc6Mr"
      }
    ],
    menu: [
      {
        title: "Home",
        href: "/"
      }, {
        title: "About",
        href: "/about"
      }, {
        title: "Posts",
        href: "/posts"
      }
    ]
  };
});

var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

define('views/app',['jquery', 'underscore', 'backbone', 'templates'], function($, _, Backbone, JST) {
  var AppView, _ref;
  return AppView = (function(_super) {
    __extends(AppView, _super);

    function AppView() {
      _ref = AppView.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    AppView.prototype.template = JST['app/scripts/templates/app.hbs'];

    AppView.prototype.initialize = function() {
      this.render();
      return this;
    };

    AppView.prototype.render = function() {
      this.$el.html(this.template(this.model));
      return this;
    };

    return AppView;

  })(Backbone.View);
});

var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

define('views/main',['jquery', 'underscore', 'backbone', 'templates'], function($, _, Backbone, JST) {
  var MainView, _ref;
  return MainView = (function(_super) {
    __extends(MainView, _super);

    function MainView() {
      _ref = MainView.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    MainView.prototype.template = JST['app/scripts/templates/main.hbs'];

    MainView.prototype.initialize = function() {
      return console.log('initialize MainView', this);
    };

    MainView.prototype.render = function() {
      this.$el.html(this.template(this.model));
      return this;
    };

    return MainView;

  })(Backbone.View);
});

define('views/about',['jquery', 'backbone', 'templates'], function($, Backbone, JST) {
  return Backbone.View.extend({
    template: JST['app/scripts/templates/about.hbs'],
    initialize: function() {
      return console.log('initialize AboutView', this);
    },
    render: function() {
      this.$el.html(this.template({
        title: 'About'
      }));
      return this;
    }
  });
});

define('models/post',['backbone'], function(Backbone) {
  return Backbone.Model.extend({
    idAttribute: '_id',
    urlRoot: '/api/v2/learning-yeoman-ch3/posts',
    defaults: {
      title: 'Post Title',
      slug: 'post-title',
      image: '//placehold.it/250&text=Image',
      body: 'This is an example post with default data.',
      tags: ['featured', 'post'],
      created: null,
      modified: null,
      published: true
    },
    initialize: function() {
      return console.log(this);
    },
    validate: function(attrs, options) {
      if (attrs.title === '') {
        return 'You must provide a title.';
      } else if (attrs.title.length < 2) {
        return 'The title must be at least 2 characters.';
      }
    }
  });
});

define('collections/posts',['backbone', 'models/post'], function(Backbone, PostModel) {
  return Backbone.Collection.extend({
    model: PostModel,
    url: function() {
      return '/api/v2/learning-yeoman-ch3/posts';
    },
    parse: function(response) {
      this.trigger('posts:fetch:complete');
      return response;
    }
  });
});

var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

define('views/post',['jquery', 'underscore', 'backbone', 'templates'], function($, _, Backbone, JST) {
  var PostView, _ref;
  return PostView = (function(_super) {
    __extends(PostView, _super);

    function PostView() {
      _ref = PostView.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    PostView.prototype.className = 'post';

    PostView.prototype.template = JST['app/scripts/templates/post.hbs'];

    PostView.prototype.events = {
      'click .media': 'itemClickHandler',
      'click .edit': 'editItemHandler',
      'click .delete': 'deleteItemHandler'
    };

    PostView.prototype.initialize = function() {
      _.bindAll(this, "render");
      this.model.bind("change", this.render, this);
      return this.model.bind("destroy", this.close, this);
    };

    PostView.prototype.render = function() {
      return this.$el.html(this.template(this.model.toJSON()));
    };

    PostView.prototype.itemClickHandler = function(e) {
      e.preventDefault();
      Backbone.trigger('post:click', this);
      return Backbone.history.navigate('#/posts/' + this.model.id);
    };

    PostView.prototype.editItemHandler = function(e) {
      return Backbone.trigger('post:edit', this);
    };

    PostView.prototype.deleteItemHandler = function(e) {
      var confirmDelete;
      e.preventDefault();
      confirmDelete = confirm('Are you sure you want to delete this?');
      if (confirmDelete) {
        Backbone.trigger('post:delete', this.model);
        return this.model.destroy({
          success: function() {
            return Backbone.history.navigate('#/posts');
          }
        });
      }
    };

    PostView.prototype.close = function() {
      return this.unbind();
    };

    return PostView;

  })(Backbone.View);
});

var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

define('views/posts',['jquery', 'underscore', 'backbone', 'templates', 'collections/posts', 'views/post'], function($, _, Backbone, JST, PostsCollection, PostView) {
  var PostsView, _ref;
  return PostsView = (function(_super) {
    __extends(PostsView, _super);

    function PostsView() {
      _ref = PostsView.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    PostsView.prototype.template = JST['app/scripts/templates/posts.hbs'];

    PostsView.prototype.initialize = function() {
      _.bindAll(this, "render");
      this.collection = new PostsCollection();
      this.collection.fetch();
      this.collection.bind('posts:fetch:complete', this.render, this);
      this.childViews = [];
      this.listenTo(this.collection, 'add', this.renderOne);
      return this.listenTo(this.collection, 'reset', this.renderAll);
    };

    PostsView.prototype.render = function() {
      this.$el.html(this.template());
      return this;
    };

    PostsView.prototype.renderOne = function(item) {
      var itemView;
      itemView = new PostView({
        model: item
      });
      this.childViews.push(itemView);
      return this.$el.append(itemView.render());
    };

    PostsView.prototype.renderAll = function() {
      return this.collection.each(this.renderOne, this);
    };

    PostsView.prototype.onClose = function() {
      return _.each(this.childViews, function(view) {
        return view.remove();
      });
    };

    return PostsView;

  })(Backbone.View);
});

var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

define('views/post-detail',['jquery', 'underscore', 'backbone', 'templates'], function($, _, Backbone, JST) {
  var PostDetailView, _ref;
  return PostDetailView = (function(_super) {
    __extends(PostDetailView, _super);

    function PostDetailView() {
      _ref = PostDetailView.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    PostDetailView.prototype.template = JST['app/scripts/templates/post-detail.hbs'];

    PostDetailView.prototype.events = {
      'click .edit': 'editItemHandler',
      'click .delete': 'deleteItemHandler'
    };

    PostDetailView.prototype.initialize = function() {
      _.bindAll(this, "render");
      console.log('PostDetailView initialize:', this);
      if (this.model.id) {
        this.model.fetch();
      }
      this.model.bind("change", this.render, this);
      return this.model.bind("destroy", this.close, this);
    };

    PostDetailView.prototype.render = function() {
      return this.$el.html(this.template(this.model.toJSON()));
    };

    PostDetailView.prototype.editItemHandler = function(e) {
      return Backbone.trigger('post:edit', this);
    };

    PostDetailView.prototype.deleteItemHandler = function(e) {
      e.preventDefault();
      if (confirm('Are you sure you want to delete this?')) {
        Backbone.trigger('post:delete', this.model);
        return this.model.destroy({
          success: function() {
            return Backbone.history.navigate('#/posts');
          }
        });
      }
    };

    PostDetailView.prototype.onClose = function() {};

    return PostDetailView;

  })(Backbone.View);
});

var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

define('views/post-form',['jquery', 'underscore', 'backbone', 'templates', 'models/post'], function($, _, Backbone, JST, Post) {
  var PostFormView, _ref;
  return PostFormView = (function(_super) {
    __extends(PostFormView, _super);

    function PostFormView() {
      _ref = PostFormView.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    PostFormView.prototype.template = JST['app/scripts/templates/post-form.hbs'];

    PostFormView.prototype.events = {
      'click .save': 'formSubmitHandler'
    };

    PostFormView.prototype.initialize = function() {
      _.bindAll(this, "render");
      if (this.model != null) {
        this.model.bind("change", this.render, this);
        this.model.bind("destroy", this.close, this);
        return this.model.bind("invalid", this.showErrors, this);
      } else {
        return this.model = new Post();
      }
    };

    PostFormView.prototype.render = function() {
      var _ref1;
      return this.$el.html(this.template((_ref1 = this.model) != null ? _ref1.toJSON() : void 0));
    };

    PostFormView.prototype.formSubmitHandler = function(e) {
      var formData, modelData;
      e.preventDefault();
      formData = $('form').serializeArray();
      modelData = {};
      _.each(formData, function(o) {
        return modelData[o.name] = o.value;
      });
      this.model.save(modelData, {
        success: function(data) {
          return Backbone.history.navigate('#/posts');
        }
      });
      Backbone.trigger('post:save', this.model);
      return console.log(modelData, this.model);
    };

    PostFormView.prototype.showErrors = function(message) {
      return alert(message);
    };

    return PostFormView;

  })(Backbone.View);
});

define('routes/app',['backbone', 'config', 'views/app', 'views/main', 'views/about', 'views/posts', 'views/post', 'views/post-detail', 'views/post-form', 'models/post'], function(Backbone, Config, AppView, MainView, AboutView, PostsView, PostView, PostDetailView, PostFormView, PostModel) {
  return Backbone.Router.extend({
    currentView: null,
    childViews: {},
    routes: {
      '': 'index',
      'index': 'index',
      'about': 'about',
      'posts': 'posts',
      'posts/new': 'postNew',
      'posts/:id': 'postDetail',
      'posts/:id/edit': 'postEdit'
    },
    index: function() {
      var App;
      App = new AppView({
        el: '.container',
        model: Config
      });
      return this.showView(new MainView({
        el: '.content',
        model: Config
      }));
    },
    about: function() {
      return this.showView(new AboutView({
        el: '.content'
      }));
    },
    posts: function() {
      return this.showView(new PostsView({
        el: '.content'
      }));
    },
    postDetail: function(id) {
      var post;
      post = new PostModel({
        _id: id
      });
      return this.showView(new PostDetailView({
        el: '.content',
        model: post
      }));
    },
    postEdit: function(id) {
      var post;
      post = new PostModel({
        _id: id
      });
      return this.showView(new PostFormView({
        el: '.content',
        model: post
      }));
    },
    postNew: function() {
      return this.showView(new PostFormView({
        el: '.content'
      }));
    },
    showView: function(view) {
      if (this.currentView) {
        this.currentView.close();
      }
      this.currentView = view;
      return this.currentView.render();
    }
  });
});

'use strict';
require.config({
  shim: {
    underscore: {
      exports: '_'
    },
    backbone: {
      deps: ['underscore', 'jquery'],
      exports: 'Backbone'
    },
    bootstrap: {
      deps: ['jquery'],
      exports: 'jquery'
    },
    handlebars: {
      exports: 'Handlebars'
    }
  },
  paths: {
    jquery: '../bower_components/jquery/dist/jquery',
    backbone: '../bower_components/backbone/backbone',
    underscore: '../bower_components/underscore/underscore',
    bootstrap: '../bower_components/sass-bootstrap/dist/js/bootstrap',
    handlebars: '../bower_components/handlebars/handlebars',
    config: './config'
  }
});

require(['backbone', 'app', 'routes/app'], function(Backbone, App, AppRouter) {
  Backbone.View.prototype.close = function() {
    this.unbind();
    if (this.onClose) {
      return this.onClose();
    }
  };
  App.router = new AppRouter();
  window.App = App;
  return Backbone.history.start();
});

define("main", function(){});

