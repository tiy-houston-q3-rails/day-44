require 'flickraw'

FlickRaw.api_key=ENV["FLICKR_API_KEY"]
FlickRaw.shared_secret=ENV["FLICKR_SECRET"]

list   = flickr.photos.getRecent

id     = list[0].id
secret = list[0].secret
info = flickr.photos.getInfo :photo_id => id, :secret => secret

puts info.title           # => "PICT986"
puts info.dates.taken     # => "2006-07-06 15:16:18"

puts FlickRaw.url_b(info) # => "https://farm3.static.flickr.com/2485/3839885270_6fb8b54e06_b.jpg"


sizes = flickr.photos.getSizes :photo_id => id

original = sizes.find {|s| s.label == 'Original' }
#puts original.width       # => "800" -- may fail if they have no original marked image
