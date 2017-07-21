get '/card/:deck_id' do

  # @cards = Card.all
  # if current_user
  @card = Card.where(deck_id: params[:deck_id]).first
  erb :'/card'
  # else
  #   redirect '/login'
  # end
  #start at card.id where first instance of deck_id
end

post '/card/:deck_id/:card_id' do
  erb :'/card'
end
