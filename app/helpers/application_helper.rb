module ApplicationHelper
	def percentage_change_fmt(percentage)
		is_negative = percentage.to_i.negative?
		css_class = is_negative ? 'text-red-500' : 'text-green-500'
		icon_class = is_negative ? "fas fa-chevron-up #{css_class} mr-1" : "fas fa-chevron-down #{css_class} mr-1"
		tag.i(nil, class: icon_class) +
		tag.span("#{percentage.round(2)}%", class: css_class)
	end

	def td_img_card(text:, subtext:, img_src:, img_alt: nil)
		sanitize(
			"<div class='flex items-center'>
				<div class='flex-shrink-0 h-10 w-10 ml-5'>
					<img class='h-10 w-10 rounded-full' src='#{img_src}' alt='#{img_alt}'>
				</div>
				<div class='ml-4'>
					<div class='text-sm font-medium text-gray-900'>
						#{text.upcase}
					</div>
					<div class='text-sm text-gray-500'>
						#{subtext}
					</div>
				</div>
			</div>"
		)
	end

	def money_fmt(amount)
		Money.default_infinite_precision = true
		Money.from_amount(amount, Current.vs_currency.symbol.upcase).format
	end
end
