class ModificationSerializer < ActiveModel::Serializer
  attributes :id, :date, :user, :transportation
  # has_one :user
  # has_one :transportation
  has_one :student

 
end
