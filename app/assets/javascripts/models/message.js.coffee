MessagingApp.Message = DS.Model.extend
  sender: DS.belongsTo('user')
  recipient: DS.belongsTo('user')
  group: DS.belongsTo('group')
  content: DS.attr()
