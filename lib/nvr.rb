require "active_model"

class Nvr
  include ActiveModel::Validations

  attr_accessor :nip

  validates :nip, presence: true

  def initialize(options = {})
    options.each do |key, value|
      send "#{key}=", value
    end
  end

  def good
    @nip + "1"
  end
end
