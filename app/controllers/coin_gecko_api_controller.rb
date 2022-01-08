class CoinGeckoApiController < ApplicationController
	before_action :set_client

	def exchanges
		@exchanges = @client.exchanges
		render json: @exchanges
	end

	def coins
		@coins = @client.markets(nil, vs_currency: Current.vs_currency)
		render json: @coins
	end

	private

	def set_client
		@client = CoingeckoRuby::Client.new
	end
end
