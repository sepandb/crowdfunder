class Project < ActiveRecord::Base

	has_many :pledges
	has_many :users, through: :pledges

end
