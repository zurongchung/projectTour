require "json"
require_relative 'core'
ROOT = '../'
_IN = ROOT + 'haml/sell.html.haml'
_OUT = ROOT + 'release/html/sell.html'
DB_SELL = ROOT + 'db/sell/sell.json'
DB_QUICK_NAV = ROOT + 'db/sell/quickNav.json'
DB_CAROUSEL = ROOT + 'db/sell/carousel.json'
class Sell < HTML
  attr_accessor :sellDataDB
  def initialize(_i, _o)
    super(_i, _o)
    @sellContents = ROOT + 'haml/sell/sell-contents.html.haml'
    @quickNavContents = ROOT + 'haml/sell/quick-nav.html.haml'
    @carouselElement = ROOT + "haml/sell/scene-intro.html.haml"
    @sellDB = JSON.parse(readData(DB_SELL))
    @quickNav = JSON.parse(readData(DB_QUICK_NAV))
    @carouselContents = JSON.parse(readData(DB_CAROUSEL))
  end
end
sell = Sell.new(_IN, _OUT)
sell.render
