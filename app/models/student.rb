class Student < ApplicationRecord
  has_many :modifications
  belongs_to :transportation
 
end
