class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_recent

  def load_recent
    @recent_talks = Talk.order('created_at DESC').limit(3)
  end
end
