class CreateTableGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.string   :correct
      t.integer  :round_id
      t.integer  :card_id
      t.integer  :result
      t.integer  :total_result

      t.timestamps
    end
  end
end
