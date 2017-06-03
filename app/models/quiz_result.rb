class QuizResult < ApplicationRecord
  belongs_to :user
  belongs_to :quiz, :class_name => "MiniQuiz"
end
