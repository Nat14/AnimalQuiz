class CreateAskAnimalQuestions < ActiveRecord::Migration
  def change
    create_table :ask_animal_questions do |t|
      t.references :animal, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
