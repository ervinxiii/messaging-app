MessagingApp.DashboardController = Em.Controller.extend
  users: []
  messages: []

MessagingApp.DashboardUsersController = Em.Controller.extend
  user: {}
  message: {}
  setupController: (controller) ->
    controller.set 'messages', @store.findAll 'message'
  actions:
    createNewMessage: ->
      message = @store.createRecord('message', @get('message'))
      message.save().then ((response) =>
      ), (response) =>
        alert('Message cannot be blank')
        message.deleteRecord()
