require 'json'
require 'open-uri'



SCHEDULER.every '1d', :first_in => 0 do |job|

	url="https://www.google.com"
	send_event('web_view', url:url)


end


