get '/card_display/deck/:id' do
 @deck =Deck.find(params[:id])
 @cards = @deck.cards
  erb :"cards/card_display"
end

post '/card_display/deck/:id' do
 @deck =Deck.find(params[:id])
 @cards = @deck.cards
 card = @cards.find_by_deck_id(@deck.id)
 card_id = card.id
 answer = params[:card][:answer]
 if answer ==!nil && card_id ==!nil
 @response = right_or_wrong(answer, card_id)
else
  @response = "please enter something"
 end
erb :"cards/card_display"
end
