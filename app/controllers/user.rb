get '/register' do
 erb :'/users/register'
end

post '/register' do
  # this will redirect to /login after adding a user
end

get '/login' do
  "this page will allow people to login"
end

post '/login' do
  # This will redirect to "/" with a session[:user_id] = user_id
end

get '/logout' do
  # session[:user_id].destroy
  "this will redirect to home with sessions closed"
end

get '/users/:user_id' do
  "this will summarize user rounds taken and results"
end

