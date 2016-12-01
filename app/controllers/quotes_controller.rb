get '/quotes' do
  # @nasa_info = NasaApi.get_api_info
  quotes = Quote.all
  if request.xhr?
    @random_quote = quotes.sample
    erb :'_text', layout: false
  else
    erb :'quotes/index'
  end
end


get '/quotes/new' do
  @quote = Quote.new(params[:quote])
end
