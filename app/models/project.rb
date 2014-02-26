class Project < ActiveRecord::Base

	has_many :pledges
<<<<<<< HEAD
	belongs_to :user

	def owner
		user
	end

=======
	has_many :breakpoints
>>>>>>> master
end
