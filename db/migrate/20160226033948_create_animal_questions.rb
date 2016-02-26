class CreateAnimalQuestions < ActiveRecord::Migration
  def change
    create_table :animal_questions do |t|
      t.integer :animal_id
      t.string :question_id

      t.timestamps null: false
    end
  end
end
