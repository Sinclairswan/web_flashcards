get '/deck/:id' do
  @deck = Deck.find(params[:id])
  @cards = @deck.cards
  erb :'/decks/show'
end
