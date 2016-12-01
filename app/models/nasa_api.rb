class NasaApi

  def self.get_api_info
    nasa_api = "https://api.nasa.gov/planetary/apod?api_key=X7j4f1rFeOfbT60LamYonJ87mh06Fbqth8j1wrES"
    request = Net::HTTP.get(URI(nasa_api))
    JSON.parse request
  end

end
