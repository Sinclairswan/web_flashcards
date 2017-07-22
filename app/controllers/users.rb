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

post '/logout' do
  session.delete(:user_id)
  redirect '/'
end

before '/users/:id/*' do
  # write method
  authenticate!
end

get '/profile' do
  if current_user
    user = User.find(current_user.id)
    @rounds = Round.where(user_id: user)

    erb :'/users/profile'
  end
end

#stats
get '/stats' do
  # "hi"
  erb :'users/stats'
end
