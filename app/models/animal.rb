class Animal < ActiveRecord::Base
  has_many :ask_animal_questions
  has_many :questions, through: :ask_animal_questions
end
