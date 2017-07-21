########### HOME ###########
#home
get '/' do
  # "hi"
  erb :'home/home'
end

########### CARD ###########
#card_display
get '/card_display' do
  # "hi"
  erb :'cards/card_display'
end

########### STATS ###########
#stats
get '/stats' do
  # "hi"
  erb :'stats/stats'
end

########### USERS ###########
#register
get '/new' do
  # "hi"
  erb :'/users/new'
end

#profile
get '/profile' do
  # "hi"
  erb :'/users/profile'
end
