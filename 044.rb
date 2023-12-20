=begin

Question: Extract the domain name from a URL

Description:
  Write a function that when given a URL as a string, parses out just the domain name and
  returns it as a string. For example:

  * url = "http://github.com/carbonfive/raygun" -> domain name = "github"
  * url = "http://www.zombie-bites.com"         -> domain name = "zombie-bites"
  * url = "https://www.cnet.com"                -> domain name = cnet"

=end

def domain_name(url)
  url_arr = url.split('.')
  url_arr.first.include?('www') ? url_arr[1] : url_arr.first.split('//').last
end

=begin

Others' solutions:

def domain_name(url)
  regex = /(https|http)?:?\/?\/?(?:www\.)?(?<domain_name>.*?)\./
  url.match(regex)[:domain_name]
end

def domain_name(url)
  url.gsub!('http://', '')
  url.gsub!('https://', '')
  url.gsub!('www.', '')
  url.split(".")[0]
end

def domain_name(url)
  url.match(%r{//[^/]*?([^/.]+)\.[^/.]+(/|$)})[1]
end

def domain_name(url)
  url.match(/.*[\.\/](.*)\./)[1]
end

=end