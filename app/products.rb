require "json"
require_relative 'core'
ROOT = '../'
_IN = ROOT + 'haml/product.html.haml'
_OUT = ROOT + 'release/html/product.html'
DB_PAGE_A = ROOT + 'db/page/pageA.json'
DB_PAGE_QUICK_LINKS = ROOT + 'db/page/quickLinks.json'
class Product < HTML
  def initialize(_i, _o)
    super(_i, _o)
    @selfTour = ROOT + 'haml/page/pageA.html.haml'
    @selfTourData = JSON.parse(readData(DB_PAGE_A))
    @selfTourLinksData = JSON.parse(readData(DB_PAGE_QUICK_LINKS))
  end
end
p = Product.new(_IN, _OUT)
p.render
