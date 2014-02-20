define [
  'jquery'
  'underscore'
  'backbone'
  'templates'
], ($, _, Backbone, JST) ->
  class ListitemView extends Backbone.View
    template: JST['app/scripts/templates/listitem.hbs']