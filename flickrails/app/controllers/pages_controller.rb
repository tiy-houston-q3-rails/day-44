class PagesController < ApplicationController

  before_action :authenticate_user!, only: [:photos]

  def dashboard
  end

  def photos

    require 'flickraw'

    FlickRaw.api_key=ENV["FLICKR_API_KEY"]
    FlickRaw.shared_secret=ENV["FLICKR_SECRET"]


    id = current_user.uid
    @photos = flickr.photos.search(:user_id => id)
  end
end
