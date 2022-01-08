class VsCurrency < ApplicationRecord
	def to_s
		symbol.upcase
	end
end
