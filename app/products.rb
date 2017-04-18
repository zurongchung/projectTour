require_relative 'core'
ROOT = ''
class Product < HTML
  def initialize(in_path, out_path)
    super(ROOT + in_path, ROOT + out_path)
  end
end
