get '/' do
  @decks = Deck.all
  erb :index
end

get '/register' do
 erb :register
end

post '/register' do
   @user = User.new(params[:user])
  if @user.valid?
      @user.save
      erb :'/login'
  else
    @error= @user.errors.full_messages
    erb :'/register'
  end
end

get '/login' do
  erb :'/login'
end

post '/login' do
   user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    @error = "Invalid Password, Try Again."
    erb :'/entries/login'
  end
end


get '/logout' do
  session.delete(:user_id)
  redirect '/'
end
