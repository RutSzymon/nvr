class Nvr
  attr_accessor :nip

  def initialize(value)
    self.nip = value
  end

  def good
    @nip + "1"
  end
end
