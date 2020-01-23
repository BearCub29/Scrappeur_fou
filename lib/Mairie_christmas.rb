
require "nokogiri"
require "open-uri"

page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))

arr_city = page.xpath('//*[@id="voyance-par-telephone"]/table/tbody/tr[2]/td/table/tbody/tr/td[1]/p/a[6]')

print arr_city


#<a class="lientxt" href="./95/asnieres-sur-oise.html">ASNIERES SUR OISE</a>


=begin
arr_cities.each do |city|
  arr_sites << "http://annuaire-des-mairies.com/95/#{city}.html"
end
arr_sites.each do |site|
  x = Nokogiri::HTML(open(site))
  arr_emails << x.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]/text()")
end
print arr_cities
print arr_emails
=end