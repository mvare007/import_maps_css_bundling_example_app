module HomeHelper
	def percentage_change_fmt(percentage)
		is_negative = percentage.to_i.negative?
		css_class = is_negative ? 'text-red-500' : 'text-green-500'
		icon_class = is_negative ? "fas fa-chevron-up #{css_class} mr-1" : "fas fa-chevron-down #{css_class} mr-1"
		tag.i(nil, class: icon_class) +
		tag.span("#{percentage}%", class: css_class)
	end

	def price_fmt(price)
		"price #{}"
	end
end
