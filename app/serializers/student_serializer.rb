class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :guardian, :homeroom, :phone, :transportation
  has_many :dismissalchanges
end
