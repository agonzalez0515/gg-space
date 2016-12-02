get '/' do
  if request.xhr?
    # if #something about which button was clicked
      erb :'_login-form', layout: false
    # else
    #   erb :'_register-form', layout: false
    # end
  else
    erb :index
  end
end
