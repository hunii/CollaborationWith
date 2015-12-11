


SCHEDULER.every '1d', :first_in => 0 do |job|
    # 'y' or 'n'
	iamfree = 'y'

	if iamfree == 'y'
    	on_off = [{:name=>"I am looking for job", :body=>"green"}]
    elsif iamfree == 'n'
		on_off = [{:name=>"I am NOT looking for job", :body=>"red"}]
	end

	send_event 'on_or_off', { comments: on_off } 

end