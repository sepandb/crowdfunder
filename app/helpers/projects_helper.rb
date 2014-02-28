module ProjectsHelper

	def date_for_jquery_countdown(date)
		year = date.strftime('%Y')
		month = date.strftime('%-m')
		day = date.strftime('%d')

		"#{year}, #{month}-1, #{day}"

	end
end
