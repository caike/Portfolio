require 'digest/sha1'
require 'cgi'
require 'httparty'

class Slideshare

  API_KEY = ENV['slideshare_key']
  API_SECRET = ENV['slideshare_secret']

  def self.get_embed_for_url()

    ts = Time.now.to_i.to_s

    hash = Digest::SHA1.hexdigest("#{API_SECRET}#{ts}")

    url = "http://www.slideshare.net/api/2/get_slideshow"

    slide_url = "http://www.slideshare.net/luizsanches/software-livreserpensaragir"


    response = HTTParty::get(url, query: {
      api_key: API_KEY,
      ts: ts,
      hash: hash,
      slideshow_url: slide_url
    })

  end
end


