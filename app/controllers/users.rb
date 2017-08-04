get '/login' do
  erb :'/users/login'
end

post '/login' do
  @user = User.find_by(email: params[:user][:email])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    redirect '/'
  end
end

#creates users
get '/users/new' do

  erb :'/users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end

#users profile
get '/users/:id' do
  if current_user
    @user = current_user
    erb :'/users/show'
  else
     redirect '/login'
 end
end

get '/logout' do
  session.clear
  redirect '/'
end
