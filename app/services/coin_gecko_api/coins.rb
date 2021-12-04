class CoinGeckoApi::Coins
	def self.fetch(currency: 'eur')
		client = CoingeckoRuby::Client.new

		coins = client.markets(nil, vs_currency: currency)
		coins.each do |coin|
			c = Coin.find_or_initialize_by(name: coin['name'])
			c.symbol = coin['symbol']
			c.current_price = coin['current_price']
			c.image = coin['image']
			c.market_cap = coin['market_cap']
			c.market_cap_rank = coin['market_cap_rank']
			c.total_volume = coin['total_volume']
			c.high_24h = coin['high_24h']
			c.low_24h = coin['low_24h']
			c.price_change_24h = coin['price_change_24h']
			c.price_change_percentage_24h = coin['price_change_percentage_24h']
			c.market_cap_change_24h = coin['market_cap_change_24h']
			c.market_cap_change_percentage_24h = coin['market_cap_change_percentage_24h']
			c.circulating_supply = coin['circulating_supply']
			c.total_supply = coin['total_supply']
			c.max_supply = coin['max_supply']
			c.ath = coin['ath']
			c.ath_change_percentage = coin['ath_change_percentage']
			c.ath_date = coin['ath_date']
			c.atl = coin['atl']
			c.atl_change_percentage = coin['atl_change_percentage']
			c.atl_date = coin['atl_date']
			c.save!
		end
	end
end
