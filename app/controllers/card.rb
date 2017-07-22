
#card_display
# get '/card_display' do
#   erb :'cards/card_display'
# end

get '/deck/:id' do
  @deck = Deck.find(params[:id])
  @ordered_cards = @deck.cards.order(:id)


  erb :'/decks/show'
end
