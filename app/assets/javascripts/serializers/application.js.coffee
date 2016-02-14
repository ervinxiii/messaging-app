MessagingApp.ApplicationSerializer = DS.RESTSerializer.extend
  normalize: (type, hash, property) ->
    json = {}
    for prop of hash
      if prop.includes("recipient")
        name = prop.replace('recipient','recipient_id')
        json[name] = hash[prop]
        json[prop] = hash[prop]
      else
        json[prop] = hash[prop]

    this._super(type, json, property)
