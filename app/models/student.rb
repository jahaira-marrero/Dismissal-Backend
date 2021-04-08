class Student < ApplicationRecord
  has_many :dismissalchanges, class_name: "Change"
  belongs_to :transportation
 
end
