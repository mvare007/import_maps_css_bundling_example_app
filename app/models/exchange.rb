class Exchange < ApplicationRecord
	# Scopes
	scope :by_trust_score_rank, -> { order(trust_score_rank: :desc) }
	scope :by_trade_volume_24h, -> { order(trade_volume_24h_btc: :desc) }
end
