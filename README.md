
**NOT RUNNING**


Personal Website Running on Heroku 


Note: Example of usage
List widget format
usingList = [{:label=>"Count", :value=>10}, { :label=>"Sort", :value=>30}]
 send_event('myob_list', {items: usingList })

Comments Widget format
usingComment = [{:name=>"MYOB", :body=>"Using Comment work!!"}]
  send_event('testtest1', {comments: usingComment })

List Widget format reading from .txt
config_file = File.dirname(File.expand_path(__FILE__)) + '/../Gemfile.lock'
config = File.read(config_file)
configjson = [JSON.parse(config)]
 send_event('test2', {items: parsedfile })
