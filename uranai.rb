require 'net/http'
require 'uri'
require 'json'

class Uranai
 @@baseurl = 'http://api.jugemkey.jp/api/horoscope/free/'

 def initialize(year,month,day)
  @@day = "#{year.to_s}/#{month.to_s}/#{day.to_s}"
  @@url = @@baseurl + "#{year}" +"/#{month}" + "/#{day}"
 end

 def url
  return @@url
 end

 def day 
  @@day
 end

 def list 
  url = self.url
  uri = URI.parse(url)
  json = Net::HTTP.get(uri)
  result = JSON.parse(json)
  return result
 end

end

uranai = Uranai.new(2014,05,15)
day = uranai.day
puts day






