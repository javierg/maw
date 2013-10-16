class Ad
  attr_accessor :main

  MAIN_DEFAULT = {img: "metamorfo.jpg", link: "www.metamorfo.com"}

  MAIN_ADS = {
    familia: {img: "ads/baby-gym.png"},
    solo_para_ti: {img: "ads/grupo-adelante.png", link: "www.facebook.com/GrupoAdelante"}
  }.freeze

  def initialize section
    section = section.titleize.gsub(/ /,'').underscore.to_sym
    @main = OpenStruct.new (MAIN_ADS[section] || MAIN_DEFAULT)
  end

end
