require_relative 'core'
ROOT = '../'
_IN = ROOT + 'haml/app.html.haml'
_OUT = ROOT + 'release/html'
class Product < HTML
  def initialize(_i, _o)
    super(_i, _o)
  end
end
