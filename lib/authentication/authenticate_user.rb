# curl --location --request POST 'https://showoff-rails-react-production.herokuapp.com/oauth/token' \
# --header 'Content-Type: application/json' \
# --data-raw '{
#     "grant_type": "password",
#     "client_id": "277ef29692f9a70d511415dc60592daf4cf2c6f6552d3e1b769924b2f2e2e6fe",
#     "client_secret": "d6106f26e8ff5b749a606a1fba557f44eb3dca8f48596847770beb9b643ea352",
#     "username": "abhishekpshukla+a1@gmail.com",
#     "password": "password"
# }'

require 'oauth2'

module Authentication
	class AuthenticateUser
		END_POINT = 'https://showoff-rails-react-production.herokuapp.com/api/v1'.freeze

		attr_reader :username, :password

		def initialize(username, password)
			@username = username
			@password = password 
		end

		def call
			p "ssssssssss"
			p params
			client = OAuth2::Client.new('client_id', 'client_secret', :site => END_POINT)
		end

		private

	end
end