class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :answer
      t.boolean :is_correct
      t.integer :question_id

      t.timestamps null: false
    end
    add_foreign_key :answers, :questions
  end
end
