post '/rounds' do
  @deck = Deck.find(session[:deck_id])
  @round = Round.new(deck_id: @deck.id)
  @round.save
  @deck.cards.each do |card|
    Guess.create(card_id: card.id, round_id: @round.id)
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
  session[:counter] += 1
  if session[:counter] > @round.guesses.count
    session[:counter] = 1
    guesses = @round.guesses
    if guesses.exists?(success: false)
      redirect "/round/#{@round.id}/guess"
    else
      redirect "/round/#{@round.id}"
    end
  else
    redirect "/round/#{@round.id}/guess"
  end

  # THE BIG CHECKER
  # Add on current guess counter
  # Check guess success boolean/update
  # If answer is wrong, add error variable = card.answer
  # Checks if all guesses are successful. if so...
  # redirects to '/round/:round_id'
  # else
  redirects to "/round/#{@round.id}/guess"
  end

get '/round/:round_id' do
  # Create variable equal to results from specific round
  "shows user result from specific round"
  # IF THERES NO SESSION ID IT DESTROYS instance of round
  # User first variable made to show to guest
end
