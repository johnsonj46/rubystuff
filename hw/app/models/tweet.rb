require 'active_record'
class Tweet < ActiveRecord::Base
	has_one :username
	has_one :tweet
	has_one :image
	has_one :origin
end

# created_at, profile_image_url
