MessagingApp.DashboardRoute = Em.Route.extend
  model: ->
    @store.findAll 'user'

  setupController: (controller, model) ->
    controller.set 'users', model
    #controller.set 'messages', @store.findAll 'message', params: { recipient_id: 2 }
    #mike = 1
    #lala = 2

    #message.where(sender_id: 1, recipient: 2)
    #message.where(sender_id: 2, recipient: 1)

    #Message.where('(sender_id = :sender_id AND recipient_id = :recipient_id) OR (sender_id = :recipient_id AND recipient_id = :sender_id)', sender_id: 1, recipient_id: 2)
