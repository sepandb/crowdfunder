module ApplicationHelper



	def amount_pledged_to_this_project(user, project)
		pledged_array = user.pledges.find_all_by_project_id(project.id)
		total = 0
		pledged_array.each do |pledge|
			total += pledge.amount
		end
		total
	end

end
