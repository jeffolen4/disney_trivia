class CreateHints < ActiveRecord::Migration
  def change
    create_table :hints do |t|
      t.text :hint
      t.integer :order
      t.integer :question_id

      t.timestamps null: false
    end
    add_foreign_key :hints, :questions
  end
end
