class ModificationSerializer < ActiveModel::Serializer
  attributes :id, :date, :user, :transportation, :get_name, :get_transport
  # has_one :user
  # has_one :transportation
  has_one :student

 
end
