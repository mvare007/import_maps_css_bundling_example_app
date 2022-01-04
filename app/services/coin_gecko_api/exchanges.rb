class CoinGeckoApi::Exchanges
	# https://www.coingecko.com/en/api/documentation
	def self.fetch
		client = CoingeckoRuby::Client.new
		exchanges = client.exchanges
		exchanges.each do |exchange|
			e = Exchange.find_or_initialize_by(name: exchange['name'])
			e.year_established = exchange['year_established']
			e.country = exchange['country']
			e.description = exchange['description']
			e.url = exchange['url']
			e.year_established = exchange['year_established']
			e.image = exchange['image']
			e.trust_score = exchange['trust_score']
			e.trust_score_rank = exchange['trust_score_rank']
			e.save!
		end
	end
end
