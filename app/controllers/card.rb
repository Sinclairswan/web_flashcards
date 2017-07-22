
#card_display
get '/card_display' do
  erb :'cards/card_display'
end

get '/deck/:id' do
  @deck = Deck.find(params[:id])
  @cards = @deck.cards
  erb :'/decks/show'

end
