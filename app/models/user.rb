class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :comments, :dependent => :nullify
         has_many :quiz_results, :dependent => :destroy
         has_many :favorites, :dependent => :destroy
         has_many :suggestions, :dependent => :nullify
         has_one :enrollment, :dependent => :destroy
end
