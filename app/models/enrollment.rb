class Enrollment < ApplicationRecord

validates :user_id, :presence => true, :uniqueness => {:scope => :user_id, :message => "error. You're already listed as being enrolled."}

  belongs_to :user
  belongs_to :school
end
