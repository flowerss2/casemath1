class Lesson < ApplicationRecord
  has_many :videos, :dependent => :destroy
  has_many :resources, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :mini_quizzes, :dependent => :destroy
  has_many :favorites, :dependent => :destroy
  has_many :suggestions, :dependent => :destroy
end
