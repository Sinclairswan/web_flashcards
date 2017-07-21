get '/register' do
 erb :'/users/register'
end

post '/register' do
  @user = User.create(params[:user])
 if @user.valid?
   redirect '/login?s=1'
 elsif @user.valid? == false || params[:user][:password].empty?
 @errors = @user.errors.full_messages
  erb :'users/new'
 end
end

get '/login' do
  if params[:s] == "1"
     @successful = "Account created! Go ahead and login:"
   end
   erb :'users/login'
end

post '/login' do
  @user = User.find_by(email: params[:email])
   if @user.nil?
     status 422
     @error
   elsif @user.authenticate(params[:email], params[:password])
     session[:user_id] = @user.id
     redirect '/decks'
   else
     status 422
     @error
   end
   redirect to '/login?login=failed'
end

get '/logout' do
  session.delete(:user_id)
  redirect '/decks'
end

get '/users/:user_id' do
  "this will summarize user rounds taken and results"
  erb :'404'
end

