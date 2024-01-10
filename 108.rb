=begin

Question: Remove anchor from URL

Description:
  Complete the function/method so that it returns the url with anything after the anchor (#) removed.

Examples:
  "www.codewars.com#about" --> "www.codewars.com"
  "www.codewars.com?page=1" -->"www.codewars.com?page=1"

=end

def remove_url_anchor(url)
  url.split('#').first
end

=begin

Others' solutions:

def remove_url_anchor(url)
  url.sub( /#.*/, '' )
end

=end