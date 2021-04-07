class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :guardian, :homeroom, :phone, :transportation, :changes
end
