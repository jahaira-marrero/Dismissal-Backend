class Change < ApplicationRecord
  belongs_to :user
  belongs_to :transportation
  belongs_to :student
end
