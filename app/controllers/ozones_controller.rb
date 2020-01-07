class OzonesController < ApplicationController
	def index
		require 'net/http'
		require 'json'

		@url = 'http://www.airnowapi.org/aq/observation/zipCode/current/?format=application/json&zipCode=95136&distance=0&API_KEY=9A3ECA20-6988-41DB-B707-FF9419F5B014'
		@uri = URI(@url)
		@response = Net::HTTP.get(@uri)
		@output = JSON.parse(@response)

		#Check for empty return result
		if @output.empty?
			@final_output = "Error"
		else 
			@final_output = @output[0]['AQI']
		end

	end
end
