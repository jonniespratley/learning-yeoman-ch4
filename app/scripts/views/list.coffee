define [
  'jquery'
  'underscore'
  'backbone'
  'templates'
], ($, _, Backbone, JST) ->
  class ListView extends Backbone.View
    template: JST['app/scripts/templates/list.hbs']