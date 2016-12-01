get '/quotes' do
  @quotes = Quote.all
end
