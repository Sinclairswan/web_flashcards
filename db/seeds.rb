require 'csv'
number_of_decks = 10

CSV.foreach("/Users/apprentice/web-flashcards-challenge/sample_decks/jeopardy_csv.csv", headers: true, header_converters: :symbol) do |row|
  number_of_decks.times do
  deck = Deck.find_or_create_by(name: row.to_hash[:name])
  deck_id = deck.id
  card = {question: row.to_hash[:question],
          answer: row.to_hash[:answer],
          deck_id: deck_id }

  Card.create(card)
  end
end



