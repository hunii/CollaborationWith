require 'json'
require 'open-uri'


file_ext=File.dirname(File.expand_path(__FILE__)) + '/../data/my_detail.txt'
file_doc=File.read(file_ext)
list = file_doc.split("/")




SCHEDULER.every '1d', :first_in => 0 do |job|


	mydetail = [{:name=>list[0], :body=>list[1]}]
	send_event('p_detail', comments: mydetail)
end


