get '/card/:deck_id' do
if current_user
  @deck= Card.where(deck_id: params[:deck_id])
  @card = Card.where(deck_id: params[:deck_id]).first
  @round = Round.create(user_id: @user.id, deck_id: params[:deck_id])
  erb :'/card'
else
  @error = "Please log in!"
  erb :'/login'
end
end

post '/card/:deck_id/:card_id' do

  # @total_correct = []
  # @total_wrong = []

  # Guess.create(round_id: @round.id, total_first_correct: @total_correct.length, total_guesses: (@total_correct + @total_wrong).length )

  @round = Round.last
  @deck = Card.where(deck_id: params[:deck_id])
  @card = Card.find_by(id: params[:card_id])
  # @card.counter
  @correct = nil

  @user_answer = params[:user_answer]

  if @user_answer == @card.answer
    @correct = true
    erb :'/stats' if @round.game_finished(@card, @deck)
    erb :'/card'
  elsif @user_answer != @card.answer
    @correct = false
    erb :'/stats' if @round.game_finished(@card, @deck)
    @errors = "Oh butterflies! Try again!"
    erb :'/card'
  else @user_answer = nil
    @correct = true
    erb :'/stats' if @round.game_finished(@card, @deck)
    erb :'/card'
  end

end





















####code logic that does not work

  # position += 1
    # next_card = @cards[position]
    # params[:card_id] = next_card.id
    # binding.pry
    # @current_card = next_card
    # # binding.pry
    # next_card = @cards[position]
    # next_card.id = params[:card_id]
