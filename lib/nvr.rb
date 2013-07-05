class Nvr
  attr_accessor :nip

  def initialize(options = {})
    options.each do |key, value|
      send "#{key}=", value
    end
  end

  def good
    @nip + "1"
  end
end
