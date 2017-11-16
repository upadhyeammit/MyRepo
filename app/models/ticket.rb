class Ticket < ActiveRecord::Base
	has_one: engineer
	has_one: customer
	has_many: guideline
end
