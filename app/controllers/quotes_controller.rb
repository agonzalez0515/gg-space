get '/quotes' do
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

get '/quotes/photo' do
  @nasa_info = NasaApi.get_api_info
  @image = @nasa_info['url']
  if request.xhr?
    {url:@image}.to_json
  else
    erb :'quotes/photo'
  end
end
