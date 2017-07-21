get '/' do
  @decks = Deck.all
  erb :'/home/home'
end
