MessagingApp.DashboardRoute = Em.Route.extend
  model: ->
    @store.findAll 'user'

  setupController: (controller, model) ->
    controller.set 'users', model

  #redirect(model, transition) ->
  #  @transitionTo 'dashboard.users', model.get('id')
