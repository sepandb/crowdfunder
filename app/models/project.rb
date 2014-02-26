class Project < ActiveRecord::Base

	has_many :pledges
	belongs_to :user

	def owner
		user
	end

end
