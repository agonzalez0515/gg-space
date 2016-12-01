get '/quotes' do
  @nasa_info = NasaApi.get_api_info
  quotes = Quote.all
  @random_quote = quotes.sample
  erb :'/quotes/index'

end


get '/quotes/new' do
  @quote = Quote.new(params[:quote])
end
