class ModificationSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_one :user
  has_one :transportation
  has_one :student
end
