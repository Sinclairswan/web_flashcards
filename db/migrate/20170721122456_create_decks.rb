class CreateDecks < ActiveRecord::Migration[5.0]

	def change

		create table :deck do |t|

			t. string :deck_title, null :false 

			t.timestamps 
		end
	end
end 