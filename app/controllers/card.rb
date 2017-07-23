get '/card_display/deck/:id' do
 @deck =Deck.find(params[:id])
 @cards = @deck.cards
 # binding.pry
  erb :"cards/card_display"
end

post '/card_display/deck/:id' do
 @deck =Deck.find(params[:id])
 @cards = @deck.cards
 @card = @cards.find_by_deck_id(@deck.id)
 card_id = @card.id
 answer = params[:card][:answer]

 @response = right_or_wrong(answer, card_id)
# binding.pry

erb :"cards/card_display"
end
