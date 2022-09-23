class School < ApplicationRecord
	has_many :addresses, as: :addressable
end
