class CoinsDatatable < ApplicationDatatable
	delegate :render, :money_fmt, :percentage_change_fmt, :supply_fmt, to: :@view

	def data
    @resource.map do |coin|
      [].tap do |column|
				column << coin['market_cap_rank'].to_s
				column << render('layouts/components/table/image_card', text: coin['symbol'], subtext: coin['name'], img_src: coin['image'])
				column << money_fmt(coin['current_price'])
				column << percentage_change_fmt(coin['price_change_percentage_1h_in_currency'])
				column << percentage_change_fmt(coin['price_change_percentage_24h'])
				column << percentage_change_fmt(coin['price_change_percentage_7d_in_currency'])
				column << money_fmt(coin['market_cap'])
				column << render('layouts/components/price_change_bar',
													current: coin['current_price'],
													min: coin['low_24h'],
													max: coin['high_24h'])
				column << supply_fmt(coin['circulating_supply'].to_f, coin['total_supply'].to_f)
      end
    end
  end

  def fetch_resource
		client = CoingeckoRuby::Client.new
		@resource = client.markets(nil, vs_currency: Current.vs_currency.symbol, price_change_percentage: '1h,7d')
  end
end

# "id": "bitcoin",
# "symbol": "btc",
# "name": "Bitcoin",
# "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
# "current_price": 43455,
# "market_cap": 822727882199,
# "market_cap_rank": 1,
# "fully_diluted_valuation": 912632240280,
# "total_volume": 15113922722,
# "high_24h": 43803,
# "low_24h": 42739,
# "price_change_24h": 77.14,
# "price_change_percentage_24h": 0.17782,
# "market_cap_change_24h": 240068834,
# "market_cap_change_percentage_24h": 0.02919,
# "circulating_supply": 18931268,
# "total_supply": 21000000,
# "max_supply": 21000000,
# "ath": 69045,
# "ath_change_percentage": -37.076,
# "ath_date": "2021-11-10T14:24:11.849Z",
# "atl": 67.81,
# "atl_change_percentage": 63970.74671,
# "atl_date": "2013-07-06T00:00:00.000Z",
# "roi": null,
# "last_updated": "2022-01-16T17:01:28.296Z"
