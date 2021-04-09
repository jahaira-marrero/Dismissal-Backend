class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :role, :modifications
end
