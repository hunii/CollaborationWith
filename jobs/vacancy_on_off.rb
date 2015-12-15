


SCHEDULER.every '1d', :first_in => 0 do |job|

    want = [{:name=>"I am looking for job", :body=>"green"}]
	have = [{:name=>"I am not looking for job", :body=>"red"}]

	message = [{:name=>"At uni until 2017", :body=>"orange"}]

	# Looking for job
	send_event 'want_job', { comments: want } 
	# Not looking for job
	send_event 'have_job', { comments: have } 
	# message
	send_event 'message_text', { comments: message } 

end