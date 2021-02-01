# frozen_string_literal: true

# Static Pages resource
class StaticPagesController < ApplicationController
  def home
    flickr = Flickr.new

    if flickr_id_searched?
      begin
        @user_id = params[:user_id]
        @photos = flickr.photos.search(user_id: params[:user_id])
      rescue Flickr::FailedResponse
        flash[:alert] = "Flickr user id #{@user_id} doesn't exist."
      end
    else
      @photos = flickr.interestingness.getList['photos']
    end
  end

  private

  def flickr_id_searched?
    !!params[:user_id]
  end
end
