class Group < ActiveRecord::Base
  has_many :participations
  has_many :users, through: :participations
end
