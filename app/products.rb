require "json"
require_relative 'core'
ROOT = '../'
_IN = ROOT + 'haml/app.html.haml'
_OUT = ROOT + 'release/html/app.html'
CONFIG = ROOT + 'config/combo.json'
class Product < HTML
  attr_accessor :combo
  def initialize(_i, _o)
    super(_i, _o)
    @combo = JSON.parse(readConfig(CONFIG))
  end
  def readConfig(_f)
    if(File.exist?(_f))
      contents = File.read(_f)
    end
  end
end
p = Product.new(_IN, _OUT)
p.render
