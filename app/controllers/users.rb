get '/register' do
  erb :'users/register'
end

post '/register' do
  if User.find_by(email: params[:email])
    @errors = "email already registered"
    # erb :'/users/register'
    erb :'/'

  elsif User.find_by(username: params[:username])
    @errors = "username is already registered"
    erb :'/register'

  elsif (params[:password] == "")
    @errors = "must enter a password"
    erb :'/register'

  elsif (params[:email] == "")
    @errors = "must enter an email"
    erb :'/register'

  elsif (params[:username] == "")
    @errors = "must enter a username"
    erb :'/register'

  else
    password = BCrypt::Password.create(params[:password])
    user = User.new(username: params[:username], email: params[:email])
    user.password = params[:password]
    user.save
    session[:user_id] = user.id
    redirect '/'
  end
end

get '/login' do
  erb :'users/login'
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  elsif user.nil?
    @errors = "invalid username"
    erb :'users/login'
  else
    @errors = "invalid password"
    erb :'users/login'
  end
end

get '/logout' do
  session.delete(:user_id)
  redirect '/'
end

before '/users/:id/*' do
  # write method
  authenticate!
end