get '/sessions/new' do
  if request.xhr?
    erb :'sessions/new', layout: false
  else
    redirect 'sessions/new'
  end
end


post '/sessions' do
  @user = User.find_by(username: params[:username])

  if @user && @user.password == params[:password]
    # session[:id] = @user.id
    login(@user)
    redirect '/quotes'

  else
    @errors = ["Username && Password not found."]
    erb :'sessions/new'
  end
end



# delete '/sessions/:id' do
delete '/sessions' do
  # session[:id] = nil
  logout
  redirect '/'
end
