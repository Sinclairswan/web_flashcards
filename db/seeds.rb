require 'csv'

CSV.foreach("/Users/Adam/Desktop/working/web-flashcards-challenge/sample_decks/jeopardy_csv.csv", headers: true, header_converters: :symbol) do |row|

  deck = Deck.find_or_create_by(name: row.to_hash[:name])
  deck_id = deck.id
  card = {question: row.to_hash[:question],
          answer: row.to_hash[:answer],
          deck_id: deck_id }

  Card.create(card)

end
