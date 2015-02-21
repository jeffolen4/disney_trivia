class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :answer
      t.boolean :is_correct
      t.quesion :belongs_to

      t.timestamps null: false
    end
  end
end
