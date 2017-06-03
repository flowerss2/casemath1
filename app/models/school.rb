class School < ApplicationRecord
  has_many :enrollments, :dependent => :destroy
end
