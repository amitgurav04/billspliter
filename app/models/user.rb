class User < ActiveRecord::Base
	has_many :payments
	has_many :bills, :through => :payments


	def total_paid
		self.payments.sum("amount")
	end

	def total_repay
		average = bills.sum("amount")/User.count
		average - total_paid
	end
end
