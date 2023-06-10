require 'net/http'
require 'json'

class GetRequester
  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get(uri)
    response.get_response_body
  end

  def parse_json
    JSON.parse(self.get_response_body)
  end
end
