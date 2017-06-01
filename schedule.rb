require 'httparty'
require 'json'

def schedule
  	response = HTTParty.get("https://mozgva.com/api/v1/games/schedule?id=1", 
	:query => {:oauth_token => "Test_afisha_api_key_654321"})

	json = JSON.parse(response.body)
  	puts json
end

puts schedule