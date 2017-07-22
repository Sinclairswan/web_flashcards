post '/rounds' do
  @deck = Deck.find(session[:deck_id])
  @round = Round.new(deck_id: @deck.id)
  @round.save
  @deck.cards.each do |card|
    Guess.create(card_id: card.id, round_id: @round.id)
  end
  @round.user_id = current_user.id if current_user
  @round.user_id = current_user.id if current_user
  @round.save
  session[:counter] = 0
  redirect "/round/#{@round.id}/guess"
end

get '/round/:round_id/guess' do
  @round = Round.find(params[:round_id])
  @guess_array = @round.guesses
  erb :'rounds/show'
end

# Putting loop problem from erb here so we can figure out what to do. maybe include this in post???
#
# @guess_array.find(session).card
post '/round/:round_id/guess' do
  @round = Round.find(params[:round_id])
  # Strict reorder
  @guess_array = @round.guesses.order(:id)

  # @card = @guess_array.find(@guess_array[session[:counter]]).card
  @card = @guess_array.find([session[:counter]]).first.card
  binding.pry
  if params[:answer] == @card.answer
    binding.pry
    @guess_array.find([session[:counter]]).first.success = true
    @guess_array.find([session[:counter]]).first.save
    binding.pry
    # Strict Reorder
    @guess_array = @guess_array.order(:id)
    # @guess_array = @guess_array - @guess_array[session[:counter]]
  end
  session[:counter] += 1
  if @guess_array.exists?(success: false)
    session[:counter] = 0 if session[:counter] >= @round.guesses.count
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
  erb :'/rounds/summary'
  # IF THERES NO SESSION ID IT DESTROYS instance of round
  # User first variable made to show to guest
end
