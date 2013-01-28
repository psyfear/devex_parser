# The primary requirement of a Sinatra application is the sinatra gem.
# If you haven't already, install the gem with 'gem install sinatra'
require 'sinatra'

require 'nokogiri'
require 'open-uri'

# sinatra allows us to respond to route requests with code.  Here we are 
# responding to requests for the root document - the naked domain.
get '/' do
  # the first two lines are lifted directly from our previous script
  url = "http://www2.adb.org/Projects/summaries.asp?browse=1"
  data = Nokogiri::HTML(open(url))

  @projects = data.css('.e')


  # this tells sinatra to render the Embedded Ruby template /views/shows.erb
  erb :shows
end
