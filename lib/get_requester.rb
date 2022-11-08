# Write your code here
require 'open-uri'
require 'net/http'
require 'json'

class GetRequester

    attr_accessor :url 

    def initialize(url)
        @url = url 
    end

    def get_response_body
        uri = URI.parse(url)
        response = NET::HTTP.get_response_body(url)
        response.body
    end

    def parse_json
        response=JSON.parse(self.get_response_body)
    end
end
