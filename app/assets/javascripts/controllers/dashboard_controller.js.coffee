MessagingApp.DashboardController = Em.Controller.extend
  users: []
  message: {}

  actions:
    selectUser: (user) ->
      console.log(user.id)
      recipient = @store.peekRecord('user', user.id)
      @set 'message.recipient', user

    createNewMessage: ->
      user =  @get('message').recipient
      user_id = user.get('id')
      console.log('id: ' + user_id + ' email:' +user.get('email'))
      console.log(@get('message').content)
      message = @store.createRecord('message', @get('message'))
      message.save()
      #message.save().then ((response) =>
      #@transitionToRoute 'dashboard'
      #), (response) =>
      #alert('Message cannot be blank')
      #message.deleteRecord()
