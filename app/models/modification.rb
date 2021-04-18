class Modification < ApplicationRecord
  belongs_to :user
  belongs_to :transportation
  belongs_to :student

def get_name
  Student.find(self.student_id).name
end

def get_transport
  Transportation.find(self.transportation_id).name
end

end
