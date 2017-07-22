post '/rounds' do
  @deck = Deck.find(session[:deck_id])
  @round = Round.new(deck_id: @deck.id)
  @deck.cards.each do |card|
    @round.guesses << Guess.create(card_id: card.id)
  end
  if current_user
    @round.user_id = current_user.id
  end
  @round.save
  session[:counter] = 0
  redirect "/round/#{@round.id}/guess"
end

get '/round/:round_id/guess' do
  @round = Round.find(params[:round_id])
  @guess_array = @round.guesses
  erb :'rounds/show'
end

post '/round/:round_id/guess' do
  @round = Round.find(params[:round_id])
  @guess_array = @round.guesses
  @card = Card.find(@guess_array[session[:counter]].card_id)
  if params[:answer] == @card.answer
    @guess_array[session[:counter]].success = true
    @guess_array[session[:counter]].save
  end
  session[:counter] += 1
  if @guess_array.exists?(success: false)
    if session[:counter] >= @round.guesses.count
      session[:counter] = 0
    end
      redirect "/round/#{@round.id}/guess"
  else
    redirect "/round/#{@round.id}"
  end
end

  # THE BIG CHECKER
  # Add on current guess counter
  # Check guess success boolean/update
  # If answer is wrong, add error variable = card.answer
  # Checks if all guesses are successful. if so...
  # redirects to '/round/:round_id'
  # else

get '/round/:round_id' do
  # Create variable equal to results from specific round
  "shows user result from specific round"
  # IF THERES NO SESSION ID IT DESTROYS instance of round
  # User first variable made to show to guest
end
