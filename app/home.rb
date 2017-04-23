require "json"
require_relative 'core'
ROOT = '../'
_IN = ROOT + 'haml/app.html.haml'
_OUT = ROOT + 'release/html/app.html'
DB_HOME = ROOT + 'db/home.json'
class Home < HTML
  attr_accessor :data, :h2hDataExchange
  def initialize(_i, _o)
    super(_i, _o)
    @home = ROOT + 'haml/home.html.haml'
    @homeIntroInfo = ROOT + 'haml/home/intro-text-info.html.haml'
    @data = JSON.parse(readData(DB_HOME))
    @h2hDataExchange = nil
  end
  def setData(data)
    @h2hDataExchange = data
  end
  def getData
    @h2hDataExchange
  end
end
home = Home.new(_IN, _OUT)
home.render