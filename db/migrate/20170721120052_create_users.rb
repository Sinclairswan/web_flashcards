class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false, limit: 20
      t.string :last_name, null: false, limit: 20
      t.string :email, null: false, limit: 50
      t.string :encrypted_password, null: false

      t.timestamps
    end
  end
end
