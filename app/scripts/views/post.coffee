define [
  'jquery'
  'underscore'
  'backbone'
  'templates'
], ($, _, Backbone, JST) ->
  class PostView extends Backbone.View
    template: JST['app/scripts/templates/post.hbs']