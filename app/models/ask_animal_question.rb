class AskAnimalQuestion < ActiveRecord::Base
  belongs_to :animal
  belongs_to :question
end
