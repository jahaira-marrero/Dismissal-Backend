class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :role, :username, :password, :modifications
end
