class User < ActiveRecord::Base
	has_many :payments
	has_many :bills, :through => :payments
end
