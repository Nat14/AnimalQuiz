class Question < ActiveRecord::Base
  has_many :ask_animal_questions
  has_many :animals, through: :ask_animal_questions
end
