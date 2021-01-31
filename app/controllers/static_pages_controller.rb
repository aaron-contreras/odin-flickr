# frozen_string_literal: true

# Static Pages resource
class StaticPagesController < ApplicationController
  def home
    flickr = Flickr.new
    debugger
    list = flickr.photos.getRecent
  end
end
