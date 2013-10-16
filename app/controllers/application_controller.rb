class ApplicationController < ActionController::Base
  helper_method :main_ad
  protect_from_forgery


  def main_ad
    ad = Ad.new current_page.section.name
    ad.main
  end
end
