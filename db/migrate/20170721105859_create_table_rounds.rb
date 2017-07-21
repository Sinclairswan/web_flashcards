class CreateTableRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.integer :user_id
      t.integer :deck_id
      t.integer :result
      t.integer :total_result

      t.timestamps
    end
  end
end
