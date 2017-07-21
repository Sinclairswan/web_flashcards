class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.integer :round_id
      t.integer :total_first_correct
      t.integer :total_guesses

      t.timestamps
    end
  end
end
