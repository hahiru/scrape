require 'nokogiri'
require 'open-uri'

url = 'http://www.yahoo.co.jp/'

charset = nil
html = open(url) do |f|
     char = f.charset
     f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

p doc.title