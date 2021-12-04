class HomeController < ApplicationController
	def index
		@coins = Coin.by_market_cap_rank
		@exchanges = Exchange.by_trust_score_rank
	end
end
