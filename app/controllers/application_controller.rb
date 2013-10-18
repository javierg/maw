class ApplicationController < ActionController::Base
  helper_method :main_ad, :secc_ad
  protect_from_forgery

  def main_ad
    ad = Ad.new current_page.section.name
    ad.main
  end

  def secc_ad
    ad = Ad.new current_page.section.name
    ad.secc
  end
end
