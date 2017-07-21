class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.integer :count, default: 0
      t.boolean :success, default: false
      t.integer :card_id
      t.integer :round_id

      t.timestamps
    end
  end
end
