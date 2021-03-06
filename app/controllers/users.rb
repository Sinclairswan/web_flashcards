get '/new' do
  erb :'/users/new'
end

post '/users' do
    user = User.new(params[:user])
    if user.save
      session[:user_id] = user.id
      redirect '/'
    else
    @errors = user.errors.full_messages

      erb :'/users/new'
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

get '/profile' do
  erb :'/users/profile'
end

#stats
get '/stats' do
  # "hi"
  erb :'users/stats'
end
