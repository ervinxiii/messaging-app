# For more information see: http://emberjs.com/guides/routing/

MessagingApp.Router.map ()->
  @route 'index', path: '/'
  @resource 'users', path: 'users'
