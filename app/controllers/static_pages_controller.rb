# frozen_string_literal: true

# Static Pages resource
class StaticPagesController < ApplicationController
  def home
    if params[:flickr_id]
      @person = Flickr.people.find(params[:flickr_id])
      if @person
        @photos = @person.public_photos(sizes:true).map(&:medium500!)
      end
    end
  end
end
