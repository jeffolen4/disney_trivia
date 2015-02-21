class CreateHints < ActiveRecord::Migration
  def change
    create_table :hints do |t|
      t.text :hint
      t.integer :order
      t.quesion :belongs_to

      t.timestamps null: false
    end
  end
end
