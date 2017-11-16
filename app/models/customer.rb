class Customer < ActiveRecord::Base
	has_one: user
	has_many: ticket
end
