require 'flickraw'

# search for pictures taken within 60 miles of new brunswick, between 1890-1920

FlickRaw.api_key="1d582cf7d2e4f513edd88c7a8fbbfefa"
FlickRaw.shared_secret="4c0c3afec8489cf0"

# flickr.access_token = "72157636421349513-4c054d9466f8e75a"
# flickr.access_secret = "a1295a6f518465d1"

# new_b = flickr.people.find :query => "Juan Paulo"
# latitude = new_b[0]['latitude'].to_f
# longitude = new_b[0]['longitude'].to_f

# # within 60 miles of new brunswick, let's use a bbox
# radius = 1
# args = {}
# args[:bbox] = "#{longitude - radius},#{latitude - radius},#{longitude + radius},#{latitude + radius}"

# # requires a limiting factor, so let's give it one
# args[:min_taken_date] = '1890-01-01 00:00:00'
# args[:max_taken_date] = '2013-01-01 00:00:00'
# args[:accuracy] = 1 # the default is street only granularity [16], which most images aren't...
# discovered_pictures = flickr.photos.search args
# discovered_pictures.each{|p| url = FlickRaw.url p; puts url}