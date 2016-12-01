get '/quotes' do
  quotes = Quote.all
  @random_quote = quotes.sample
  erb :'/quotes/index'
end


get '/quotes/new' do
  @quote = Quote.new(params[:quote])
end
