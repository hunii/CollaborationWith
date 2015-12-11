require 'json'
require 'open-uri'


file_ext=File.dirname(File.expand_path(__FILE__)) + '/../data/education.txt'
file_doc=File.read(file_ext)
list = file_doc.split("/")

file_ext2=File.dirname(File.expand_path(__FILE__)) + '/../data/experience.txt'
file_doc2=File.read(file_ext2)
list2 = file_doc2.split("/")

def arrayOfList(list)
  arrayOf=[]
  counting =0

  for i in 0..((list.count/2)-1)
  	counting += 1
    data = {:label=> list[i*2], :value=> list[(i*2)+1]}
    arrayOf.push(data)  
  end
  return arrayOf
end


SCHEDULER.every '1d', :first_in => 0 do |job|

	educationList = arrayOfList(list)
	send_event('education_list', items: educationList)

  experList = arrayOfList(list2)
  send_event('experience_list', items: experList)

end


