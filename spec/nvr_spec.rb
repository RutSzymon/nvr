require 'spec_helper'

describe Nvr do
  describe "via validations" do
    it "should verify presence of nip" do
      @nvr = Nvr.new
      @nvr.should_not be_valid
    end
  end
end