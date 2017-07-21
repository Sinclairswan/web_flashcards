post '/rounds' do
  this initializes the objects required to take the quiz
  redirects to # /round/:round_id/:guess_id
end

get '/round/:round_id/:guess_id' do
  "this finds the guess specific to the round id and displays it for the user to answer"
  this includes a button that posts the user guess
end

post '/round/:round_id/:guess_id' do
  # THE BIG CHECKER
  # Add on current guess counter
  # Check guess success boolean/update
  # If answer is wrong, add error variable = card.answer
  # Checks if all guesses are successful. if so...
  # redirects to '/round/:round_id'
  # else
  # redirects to '/round/:round_id/:next_guess_id' WE'LL FIGURE THIS OUT I KNOW IT

  end

get '/round/:round_id' do
  # Create variable equal to results from specific round
  shows user result from specific round
  # IF THERES NO SESSION ID IT DESTROYS instance of round
  # User first variable made to show to guest
end
