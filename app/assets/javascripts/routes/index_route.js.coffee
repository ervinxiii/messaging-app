MessagingApp.IndexRoute = Em.Route.extend
  beforeModel: ->
    @transitionTo 'dashboard'
