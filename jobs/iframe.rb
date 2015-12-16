
url=File.dirname(File.expand_path(__FILE__)) + '/../assets/images/website_1.html'




SCHEDULER.every '1d', :first_in => 0 do |job|

    url2 = "http://www.youtube.com/embed/XGSy3_Czz8k"
url=File.dirname(File.expand_path(__FILE__)) + '/../assets/images/website_1.html'

    send_event('src', src: url)
end