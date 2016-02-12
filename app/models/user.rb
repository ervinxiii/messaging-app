class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :participations
   has_many :groups, through: :participations

   has_many :sended_messages, foreign_key: :sender_id, class_name: 'Message'
   has_many :received_messages, foreign_key: :recipient_id, class_name: 'Message'

   validates :email, presence: true
end
