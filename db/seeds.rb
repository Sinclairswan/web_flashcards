require 'csv'

user1 = User.create(
  first_name: "Joe",
  last_name: "Shmoe",
  email: "joe.shmoe@example.com",
  password: "joe"
  )

user2 = User.create(
  first_name: "Melinda",
  last_name: "Banks",
  email: "melinda.banks@example.com",
  password: "melinda"
  )

card_obj = []

CSV.foreach('db/dataset/Jeopardy.csv', headers:true, header_converters: :symbol) do |row|

  deck_obj = Deck.find_or_create_by(name: row[:category])
  card_obj = Card.create(question: row[:question], answer: row[:answer], deck_id: deck_obj.id)

end

