require "json"
require_relative 'core'
ROOT = '../'
_IN = ROOT + 'haml/app.html.haml'
_OUT = ROOT + 'release/html/app.html'
COMBO_INFO = ROOT + 'config/combo.json'
NOTE_INFO = ROOT + 'config/note.json'
SELF_CONTENT_DATA = ROOT + 'config/self_tour.json'
class Product < HTML
  attr_accessor :combo
  def initialize(_i, _o)
    super(_i, _o)
    @combo = JSON.parse(readConfig(COMBO_INFO))
    @notes = JSON.parse(readConfig(NOTE_INFO))
    @selfTour = ROOT + 'haml/free_tour.html.haml'
    @self_tour_data = JSON.parse(readConfig(SELF_CONTENT_DATA))
  end
  def readConfig(_f)
    if(File.exist?(_f))
      contents = File.read(_f)
    end
  end
end
p = Product.new(_IN, _OUT)
p.render
