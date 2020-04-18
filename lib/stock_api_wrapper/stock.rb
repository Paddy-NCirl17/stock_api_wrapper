#lib/stock_api_wrapper/stock_api.rb
require 'faraday'
require 'json'

API_URL ='https://api.worldtradingdata.com/api/v1/forex?base=USD&api_token=wCXU99OVMZlQXR2wql80tzR9mw7nQlWiEgOcW3nZw5jGlRMXropsxi1wHZLJ'

module StockApiWrapper
  class Stock
  	attr_reader :symbols_returned, :base, :data
  	def initialize(attributes)
  		@symbols_returned = attributes["symbols_returned"]
  		@base = attributes["base"]
  		@data = attributes["data"]
  	end

  	def self.find(symbols_returned)
	  	response = Faraday.get("#{API_URL}")
	  	attributes = JSON.parse(response.body)
	  	new(attributes)
  	end
  end
end
