class Market < ApplicationRecord
	has_many :addresses, as: :addressable
end
