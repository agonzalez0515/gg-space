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
  erb :'quotes/new'
end

post '/quotes' do
  p params
  @character = Character.find_by(name: params[:'new-quote'][:name])
  p @character.name
  @quote = @character.quotes.new(params[:quote])
  if @quote.save
    erb :'quotes'
  else
    redirect '/quotes/new'
  end
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
