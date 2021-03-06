require  'haml'

class HTML
  def initialize(in_path, out_path)
    @main = in_path
    @output = out_path
    @corpName = "CYQC-"
  end

  def render
    contents = File.read(@main)
    engine = Haml::Engine.new(contents)
    # create regular html page
    out = File.new(@output, 'w+', 0644)
    File.write(out, engine.render(self))
  end
  def add_fragment(segm)
    contents = File.read(segm);
    Haml::Engine.new(contents).render(self)
  end
  def readData(_f)
    if(File.exist?(_f))
      contents = File.read(_f)
    end
  end
end
