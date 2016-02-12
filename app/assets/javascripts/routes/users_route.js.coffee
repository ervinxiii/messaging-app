MessagingApp.UsersRoute = Em.Route.extend
  model: ->
    @store.findAll 'user'

  setupController: (controller, users) ->
    controller.set 'users', users
