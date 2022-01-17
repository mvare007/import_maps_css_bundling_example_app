module CoinHelper
	def supply_fmt(circulating_supply, total_supply, _max_supply = nil)
		supply_percentage = total_supply.to_i - circulating_supply.to_i
		supply_percentage = supply_percentage / total_supply
		supply_percentage = (supply_percentage * 100).to_i
		"#{circulating_supply} / #{total_supply} (#{supply_percentage}%)"
	rescue FloatDomainError => e
		Rails.logger.warn(e)
		"#{circulating_supply} / #{total_supply}"
	end
end
