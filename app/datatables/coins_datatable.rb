class CoinsDatatable < ApplicationDatatable
	delegate :td_img_card, :money_fmt, :percentage_change_fmt, to: :@view

	def data
    @resource.map do |coin|
      [].tap do |column|
				column << coin['market_cap_rank'].to_s
				column << td_img_card(text: coin['symbol'], subtext: coin['name'], img_src: coin['image'])
				column << money_fmt(coin['current_price'])
				column << percentage_change_fmt(coin['price_change_percentage_24h'])
				column << coin['total_supply'].to_s
      end
    end
  end

  def fetch_resource
		client = CoingeckoRuby::Client.new
		@resource = client.markets(nil, vs_currency: Current.vs_currency.symbol)
  end
end
