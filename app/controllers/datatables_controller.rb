class DatatablesController < ApplicationController
	def exchanges
		@exchanges = @client.exchanges
		render json: @exchanges
	end

	def coins
		datatable = CoinsDatatable.new(view_context)
		render json: datatable
	end
end
