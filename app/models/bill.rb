class Bill < ActiveRecord::Base
	has_many :payments, dependent: :destroy
	has_many :users, :through => :payments
	accepts_nested_attributes_for :payments
end