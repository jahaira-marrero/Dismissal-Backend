class User < ApplicationRecord
    has_many :modifications
    # has_many :students, through: :modifications

end
