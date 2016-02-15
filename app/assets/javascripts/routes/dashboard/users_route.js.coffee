MessagingApp.DashboardUsersRoute = Em.Route.extend
  model:(params) ->
    @store.peekRecord 'user', params.user_id

  setupController: (controller, model) ->
    controller.set 'user', model
    controller.set 'message.recipient', model
    #controller.set 'messages', @store.findAll 'message'
    controller.set 'messages', @store.query('message', recipient: model.get('id'))
