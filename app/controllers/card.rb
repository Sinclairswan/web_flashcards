get '/card/:deck_id' do
if current_user
  # @position = 0
  @cards = Card.where(deck_id: params[:deck_id])
  @card = Card.where(deck_id: params[:deck_id]).first
  # @card = @cards[@position]
  erb :'/card'
  # else
  #   redirect '/login'
  # end
else
  erb :'/login'
end
  #start at card.id where first instance of deck_id
end
#
# @position = 0
post '/card/:deck_id/:card_id' do

  @cards = Card.where(deck_id: params[:deck_id])
  @card = Card.find_by(id: params[:card_id])
  # @card = Card.where(deck_id: params[:deck_id]).first
  # @current_card = @cards[@position]

  #cards.each do |@card|
  total_correct = []
  wrong_guess = []
  @correct = true


  @user_answer = params[:user_answer]
  # binding.pry
  if @user_answer == @card.answer
    @correct = true
    total_correct << 1
    # position += 1
    # next_card = @cards[position]
    # params[:card_id] = next_card.id
    # binding.pry
    # @current_card = next_card
    # # binding.pry
    erb :'/card'
  elsif @user_answer != @card.answer
    wrong_guess << 1
    @correct = false
    # params[:card_id]

    erb :'/card'
  else @user_answer = nil
    # next_card = @cards[position]
    # next_card.id = params[:card_id]
    @correct = true
    erb :'/card'
  end
  # erb :'/card'
end


