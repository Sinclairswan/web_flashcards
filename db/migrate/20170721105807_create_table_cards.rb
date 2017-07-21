class CreateTableCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
     t.string    :questions
     t.string    :answer
     t.integer   :deck_id

     t.timestamps
  end
  end
end
