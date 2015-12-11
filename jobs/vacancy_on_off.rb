


SCHEDULER.every '1d', :first_in => 0 do |job|

    want = [{:name=>"I am looking for job", :body=>"green"}]

	have = [{:name=>"I am <ins>not</ins> looking for job", :body=>"red"}]

	# Looking for job
	send_event 'want_job', { comments: want } 
	# Not looking for job
	send_event 'have_job', { comments: have } 

end