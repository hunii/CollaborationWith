require 'json'
require 'open-uri'



SCHEDULER.every '1d', :first_in => 0 do |job|

	url="http://www.w3schools.com/html/html_iframe.asp"
	send_event('web_view', url:url)


end


