class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :ask

      t.timestamps null: false
    end
  end
end
