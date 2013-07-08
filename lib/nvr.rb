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
    @nip = value.to_s
  end

  def checksum
    a = [6, 5, 7, 2, 3, 4, 5, 6, 7]
    s = 0

    for i in 0..8
      s += (nip[i].to_i*a[i])
    end
    lk = (s % 11)
    errors.add(:nip) unless lk == nip[9].to_i
  end
end
