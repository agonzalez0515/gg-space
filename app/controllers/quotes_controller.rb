get '/quotes' do
  @nasa_info = NasaApi.get_api_info
  quotes = Quote.all
  if request.xhr?
    @random_quote = quotes.sample
    erb :'_text'
  end
  erb :'quotes/index'
end


get '/quotes/new' do
  @quote = Quote.new(params[:quote])
end
