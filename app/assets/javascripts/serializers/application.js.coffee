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

  #serializeBelongsTo: (record, json, relationship) ->
    #key = relationship.key
    #belongsTo = Em.get(record, key)
   ##key = this.keyForRelationship ? this.keyForRelationship(key, "belongsTo") : key
    #key = if @keyForRelationship then @keyForRelationship(key, 'belongsTo') else key
