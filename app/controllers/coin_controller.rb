class CoinController < ApplicationController
	def show
		@coin = Coin.find(params[:id])
	end
end
