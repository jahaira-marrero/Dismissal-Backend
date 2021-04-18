class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :role, :username, :password
  has_many :modifications
end
