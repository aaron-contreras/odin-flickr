# frozen_string_literal: true

Flickr.configure do |config|
  config.api_key       = Figaro.env.flickr_api_key
  config.shared_secret = Figaro.env.flickr_shared_secret
end
