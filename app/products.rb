require "json"
require_relative 'core'
ROOT = '../'
_IN = ROOT + 'haml/app.html.haml'
_OUT = ROOT + 'release/html/app.html'
COMBO_INFO = ROOT + 'config/combo.json'
NOTE_INFO = ROOT + 'config/note.json'
class Product < HTML
  attr_accessor :combo
  def initialize(_i, _o)
    super(_i, _o)
    @combo = JSON.parse(readConfig(COMBO_INFO))
    @notes = JSON.parse(readConfig(NOTE_INFO))
  end
  def readConfig(_f)
    if(File.exist?(_f))
      contents = File.read(_f)
    end
  end
end
p = Product.new(_IN, _OUT)
p.render
