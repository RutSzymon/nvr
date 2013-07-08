require "active_model"

class Nvr
  include ActiveModel::Validations

  attr_accessor :nip

  validates :nip, presence: true, numericality: true, length: { is: 10 }

  def initialize(options = {})
    self.nip = options[:nip]
  end
end
