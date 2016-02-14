MessagingApp.Group = DS.Model.extend
  user: DS.belongsTo('user')
  group: DS.belongsTo('group')
  name: DS.attr()
