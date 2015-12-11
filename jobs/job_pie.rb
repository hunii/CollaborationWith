


data = [
  { label: "Java", value: 40 },
  { label: "C", value: 10 },
  { label: "Ruby", value: 7 },
  { label: "sql", value: 15 },
  { label: "ASP.net c#", value: 5 },
]


SCHEDULER.every '1d', :first_in => 0 do |job|
    
	send_event 'skill_area', { value: data }    
end