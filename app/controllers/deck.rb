get '/decks' do
  @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:deck_id' do
  erb :'decks/show'
end



