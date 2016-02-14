class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :recipient_id, :sender_id, :group_id
end
