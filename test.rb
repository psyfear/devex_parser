require 'nokogiri'
require 'open-uri'

url = "http://www.devex.com/en/projects/"
data = Nokogiri::HTML(open(url))

  # this line has only be adjusted slightly with the inclusion of an ampersand
  # before concerts.  This creates an instance variable that can be referenced
  # in our display logic (view).
@projects = data.css('.matrix-view striped')
debugger