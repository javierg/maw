class Ad
  attr_accessor :main, :secc

  MAIN_DEFAULT = {img: "metamorfo.jpg", link: "www.metamorfo.com"}
  SECCS_DEFAULT = {img: "ads/spacionum_add.jpg", link: "https://www.facebook.com/spacionumtijuana"}

  MAIN_ADS = {
    familia: {img: "ads/spacio-num-nov.jpg", link: "http://https://www.facebook.com/spacionumtijuana"},
    solo_para_ti: {img: "ads/ecole.png"},
    carrera: {img: "ads/baby-gym.png"}
  }.freeze

  SECCS_ADS = {
    solo_para_ti: {img: "ads/cirugiagogo.jpg", link: "https://www.facebook.com/cirugiatijuana"},
    carrera: {img: "ads/creperie.la.luna.png", link:  "https://www.facebook.com/creperia.laluna"},
  }

  def initialize section
    section = section.titleize.gsub(/ /,'').underscore.to_sym
    @main = OpenStruct.new (MAIN_ADS[section] || MAIN_DEFAULT)
    @secc = OpenStruct.new (SECCS_ADS[section] || SECCS_DEFAULT)
  end

end
