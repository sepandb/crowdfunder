class Project < ActiveRecord::Base

	has_many :pledges
	has_many :breakpoints
end
