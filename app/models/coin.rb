class Coin < ApplicationRecord
	# Scopes
	scope :by_market_cap_rank, -> { order(market_cap_rank: :desc) }
	scope :by_market_cap, -> { order(market_cap: :desc) }
	scope :by_current_price, -> { order(current_price: :desc) }
	scope :by_circulating_supply, -> { order(circulating_supply: :desc) }
	scope :by_total_supply, -> { order(total_supply: :desc) }
	scope :by_max_supply, -> { order(max_supply: :desc) }
	scope :by_price_change_percentage_24h, -> { order(price_change_percentage_24h: :desc) }
	scope :by_total_volume, -> { order(total_volume: :desc) }
end
