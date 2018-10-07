module ApplicationHelper
	def flash_class(key)
		case key
			when 'notice' then 'alert alert-success'
			when 'error' then 'alert alert-danger'
		end
	end
end
