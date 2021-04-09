class Transportation < ApplicationRecord
    has_many :students
    has_many :modifications
end
