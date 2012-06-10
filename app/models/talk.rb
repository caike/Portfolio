require 'slideshare'

class Talk < ActiveRecord::Base
  attr_accessible :title, :url

  def embed_url_widget
    ::Slideshare.get_embed_for_url(self.url)
  end
end
