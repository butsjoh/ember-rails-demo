#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./templates
#= require_tree ./router

# overall app
window.App = Ember.Application.create()

# debug stuff
#Ember.LOG_BINDINGS = true

# specify the adapter for accessing with ember-data
App.store = DS.Store.create(
  adapter: DS.RESTAdapter.create(bulkCommit: false)
  revision: 4
)

$ ->
  #App.pusher = new Pusher("dab3c715ed1d6f06af61") # replace with app_key
  #@posts_channel = App.pusher.subscribe('posts')
  #@posts_pusher = new Emberpusher(@posts_channel,App.store,App.Post)

  # DOM placement, all views will hang off this one
  App.mainView.appendTo('body')
  App.router.start()