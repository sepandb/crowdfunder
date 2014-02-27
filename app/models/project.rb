class Project < ActiveRecord::Base

	has_many :breakpoints
	has_many :pledges
	belongs_to :user
	has_many :backers, through: :pledges, source: :user

	def owner
		user
	end

	def total
		total = 0
		self.pledges.each do |pledge|
			total += pledge.amount
		end
		total
	end

end
