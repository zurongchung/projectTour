require "json"
require_relative 'core'
ROOT = '../'
_IN = ROOT + 'haml/product.html.haml'
_OUT = ROOT + 'release/html/product.html'
DB_COMBO = ROOT + 'db/combo.json'
DB_NOTE = ROOT + 'db/note.json'
DB_SELF_CONTENT_DATA = ROOT + 'config/self_tour.json'
class Product < HTML
  attr_accessor :combo
  def initialize(_i, _o)
    super(_i, _o)
    @combo = JSON.parse(readData(DB_COMBO))
    @notes = JSON.parse(readData(DB_NOTE))
    @selfTour = ROOT + 'haml/free_tour.html.haml'
    @self_tour_data = JSON.parse(readData(DB_SELF_CONTENT_DATA))
  end
end
p = Product.new(_IN, _OUT)
p.render
