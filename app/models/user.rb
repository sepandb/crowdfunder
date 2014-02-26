class User < ActiveRecord::Base
	has_secure_password

	has_many :pledges
	has_many :projects
	has_many :pledged_projects, through: :pledges, :source => :project


end
