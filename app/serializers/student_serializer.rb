class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :guardian, :homeroom, :phone, :modifications
  belongs_to :transportation
  # has_many :modifications
 
end
