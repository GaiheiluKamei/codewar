=begin

Question: Take a picture!

Description:
  You are standing on top of an amazing Himalayan mountain. The view is absolutely breathtaking! you
  want to take a picture on your phone, but... your memory is full again! ok, time to sort through
  your shuffled photos and make some space...

  Given a gallery of photos, write a function to sort through your pictures. You get a random hard disk
  drive full of pics, you must return an array with the 5 most recent ones PLUS the next one (same year
  and number following the one of the last).

  You will always get at least a photo and all pics will be in the format YYYY.imgN

Examples:
  sort_photos["2016.img1","2016.img2","2015.img3","2016.img4","2013.img5"]) ==["2013.img5","2015.img3","2016.img1","2016.img2","2016.img4","2016.img5"]
  sort_photos["2016.img1"]) ==["2016.img1","2016.img2"]

=end

def sort_photos(pics)
  pics = pics.sort_by do |pic|
    arr = pic.split('.')
    [arr.first, arr.last.scan(/\d+/).first.to_i]
  end

  return pics << pics.last.next if pics.size <= 5

  res = pics.pop(5)
  res << res.last.next
end

=begin

Others' solutions:

# 这个解法很优秀，值得学习
def sort_photos(pics)
  sorted_pics = pics.sort_by { |name| name.scan(/\d+/).map(&:to_i) }
  sorted_pics.last(5).tap { |x| x << x.last.gsub(/\d+$/, &:next) }
end

=end