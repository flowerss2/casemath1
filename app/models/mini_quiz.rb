class MiniQuiz < ApplicationRecord
  belongs_to :lesson
  has_many :quiz_results, :foreign_key => "quiz_id", :dependent => :destroy
end
