MessagingApp.IndexRoute = Em.Route.extend
  model: ->
    @store.findAll 'user'

  setupController: (controller, model) ->
    controller.set 'users', model
