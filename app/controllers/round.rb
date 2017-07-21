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
  session[:guess_id] = 1
  redirect "/round/#{@round.id}/guess"
end

get '/round/:round_id/guess' do
  @round = Round.find(params[:round_id])
  erb :'rounds/show'
end

post '/round/:round_id/guess' do
  @round = Round.find(params[:round_id])
  if session[:guess_id] >= @round.guesses.count
    session[:guess_id] += 1
  end
  # THE BIG CHECKER
  # Add on current guess counter
  # Check guess success boolean/update
  # If answer is wrong, add error variable = card.answer
  # Checks if all guesses are successful. if so...
  # redirects to '/round/:round_id'
  # else
  # redirects to '/round/:round_id/guess' WE'LL FIGURE THIS OUT I KNOW IT

  end

get '/round/:round_id' do
  # Create variable equal to results from specific round
  "shows user result from specific round"
  # IF THERES NO SESSION ID IT DESTROYS instance of round
  # User first variable made to show to guest
end
