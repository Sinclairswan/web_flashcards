get '/' do
  @decks = Deck.all
  erb :'/home/home'
end

get '/deck/:id' do
   @deck = Deck.find(params[:id])
   @cards_in_order = @deck.cards.order(:id)
   @cards = @deck.cards

  #erb :"/cards/card_display"
  redirect "/deck/#{@deck.id}/card/#{@cards.first.id}"
end

 get '/deck/:id/card/:id' do
 @deck = Deck.find(params[:id])
 @round = Round.new(deck_id: @deck.id)
 @deck.cards.select do |deck|
  deck.map do |card|
  @card = card
  @question= card.question
end
  end
end
 # @card.id + 1 until end of deck
 #  @deck = Deck.find(params[:id])
 #




