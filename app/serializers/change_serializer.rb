class ChangeSerializer < ActiveModel::Serializer
  attributes :id, :date, :student_id, :transportation_id, :user_id
end
