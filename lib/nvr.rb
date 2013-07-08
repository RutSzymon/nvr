require "active_model"

class Nvr
  include ActiveModel::Validations

  attr_accessor :nip

  validates :nip, presence: true, numericality: true, length: { is: 10 }
  validate :checksum

  def initialize(value)
    self.nip = value
  end

  def nip=(value)
    @nip = value.to_s.delete(" ").delete("-")
  end

  private
  def checksum
    errors.add(:nip) unless control_number == nip[9].to_i
  end

  def control_number
    s = 0
    (0..8).each { |i| s += (nip[i].to_i*control_array[i]) }
    s % 11
  end

  def control_array
    [6, 5, 7, 2, 3, 4, 5, 6, 7]
  end
end
