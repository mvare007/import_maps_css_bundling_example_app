class ExchangeController < ApplicationController
	def show
		@exchange = Exchange.find(params[:id])
	end
end
