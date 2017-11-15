require 'rest_client'

class Api
  response = RestClient.get 'http://api.walmartlabs.com/v1/search?query=ipod&format=json&apiKey=rtdhvpj4tjbstwuh9p7f8sky'
  # return response
end
