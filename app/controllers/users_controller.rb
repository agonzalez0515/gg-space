# USERS NEW
get '/users/new' do
  erb :'users/new'
end

# USERS CREATE
post '/users' do
    @user = User.new(params[:user])
    if @user.save
      session[:id] = @user.id
      redirect "/quotes"
    else
      @errors = @user.errors.full_messages
      erb :'users/new'
    end
end
