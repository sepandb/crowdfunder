module ProjectsHelper

	def date_for_jquery_countdown(date)
		year = date.strftime('%Y')
		month = date.strftime('%-m')
		day = date.strftime('%d')

		"#{year}, #{month}-1, #{day}"

	end

	def amount_pledged_to_this_project(user, project)
		pledged_array = user.pledges.find_all_by_project_id(project.id)
		total = 0
		pledged_array.each do |pledge|
			total += pledge.amount
		end
		total
	end
end
