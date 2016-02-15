# For more information see: http://emberjs.com/guides/routing/

MessagingApp.Router.map ()->

  @route 'dashboard', path: 'dashboard', ->
    #@route 'group', 'groups/:group_id'
    @route 'users', path: 'users/:user_id'
    #@route 'messages', path: 'messages'
    #@route 'new', path: 'new'
