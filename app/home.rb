require "json"
require_relative 'core'
ROOT = '../'
_IN = ROOT + 'haml/app.html.haml'
_OUT = ROOT + 'release/html/app.html'
DB_HOME = ROOT + 'db/home.json'
class Home < HTML
  attr_accessor :data
  def initialize(_i, _o)
    super(_i, _o)
    @home = ROOT + 'haml/home.html.haml'
    @data = JSON.parse(readData(DB_HOME))
  end
end
home = Home.new(_IN, _OUT)
home.render
