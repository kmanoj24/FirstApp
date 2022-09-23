class Company < ApplicationRecord
	has_many :addresses, as: :addressable
end
