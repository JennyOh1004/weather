class OzonesController < ApplicationController
	def index
		require 'net/http'
		require 'json'

		@url = 'http://www.airnowapi.org/aq/observation/zipCode/current/?format=application/json&zipCode=95136&distance=0&API_KEY=9A3ECA20-6988-41DB-B707-FF9419F5B014'
		@uri = URI(@url)
		@response = Net::HTTP.get(@uri)
		@output = JSON.parse(@response)

	end
end
