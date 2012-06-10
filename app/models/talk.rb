require 'slideshare'

class Talk < ActiveRecord::Base
  attr_accessible :title, :url

  protected :save

  def add_to_portfolio
    begin
      self.embed_url_widget = fetch_embed_url()
      self.save!
    rescue
      false
    end
  end

  private

    def fetch_embed_url
      ::Slideshare.get_embed_for_url(self.url)
    end

end

