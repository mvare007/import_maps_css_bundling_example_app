class Coin < ApplicationRecord
	# Scopes
	scope :by_market_cap_rank, -> { order(market_cap_rank: :asc) }
	scope :by_market_cap, -> { order(market_cap: :asc) }
	scope :by_current_price, -> { order(current_price: :asc) }
	scope :by_circulating_supply, -> { order(circulating_supply: :asc) }
	scope :by_total_supply, -> { order(total_supply: :asc) }
	scope :by_max_supply, -> { order(max_supply: :asc) }
	scope :by_price_change_percentage_24h, -> { order(price_change_percentage_24h: :asc) }
	scope :by_total_volume, -> { order(total_volume: :asc) }
end
