# frozen_string_literal: true

# Static Pages resource
class StaticPagesController < ApplicationController
  def home
    if params[:user_id]
      begin
        flickr = Flickr.new
        @user_id = params[:user_id]
        @photos = flickr.photos.search(user_id: params[:user_id])
      rescue Flickr::FailedResponse => e
        flash[:alert] = "This id doesn't exist."
      end
    end
  end
end
