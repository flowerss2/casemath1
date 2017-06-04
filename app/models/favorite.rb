class Favorite < ApplicationRecord

  validates :user_id, :presence => true
  validates :lesson_id, :presence => true, :uniqueness => {:scope => :user_id, :message => "You must really like this lesson. It's already in your favorites."}

  belongs_to :user
  belongs_to :lesson
end
