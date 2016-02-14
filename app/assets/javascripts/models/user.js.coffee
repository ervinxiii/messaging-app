MessagingApp.User = DS.Model.extend
  email: DS.attr()
  sended_messages: DS.hasMany('sender')
  received_messages: DS.hasMany('recipient')
  groups: DS.hasMany('group')
