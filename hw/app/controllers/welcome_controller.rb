class WelcomeController < ApplicationController
  def index
  	@search = $client.search('bitcoin', options = {count: 10})
  	@users = $client.user('business').description
  	@favs = $client.favorites("business", count: 10)
  end

  def about
  end

  def pages
  end

  def dbtest
  	@subject = $client.user_timeline('business', count: 10)

  	@subject.each do |blob|
  	 t = Bird.create(username: "#{blob.user.name}", tweet: "#{blob.text}", image: "#{blob.user.profile_image_url}", origin: "#{blob.created_at}")
  	end

  	@manifest = Bird.all
  end

end
