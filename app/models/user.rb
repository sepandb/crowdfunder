class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :email, :presence => true
  validates :password, :presence => true
  # validates :password_confirmation, :presence => true


  has_many :projects
  has_many :pledges
  has_many :pledged_projects, through: :pledges, source: :project

end
