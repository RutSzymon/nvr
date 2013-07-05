require 'spec_helper'

describe Nvr do
  before(:each) do
    @nip = Nvr.new(nip: "123456789")
  end
  it { @nip.good.should eq("1234567891") }
end