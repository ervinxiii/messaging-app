# Override the default adapter with the `DS.ActiveModelAdapter` which

MessagingApp.ApplicationAdapter = DS.RESTAdapter.extend({
  namespace: 'api'
})
