require 'spec_helper'

describe Nvr do
  describe "via validations" do
    it "should verify presence of nip" do
      @nvr = Nvr.new(nil)
      @nvr.should_not be_valid
    end

    context "should verify length of nip" do
      it { Nvr.new("12345").should_not be_valid }

      it { Nvr.new("12345678901").should_not be_valid }
    end

    context "should verify numericality of nip" do
      it { Nvr.new("abcdefghij").should_not be_valid }

      it { Nvr.new("12345678a0").should_not be_valid }
    end

    it "nip always should be a string" do
      @nvr = Nvr.new(1234567890)
      @nvr.nip.should eq("1234567890")
    end

    context "checksum" do
      it "shouldn't accept incorrect nip number" do
        Nvr.new("1234567890").should_not be_valid
      end

      it "should accept correct nip number" do
        Nvr.new("2010000304").should be_valid
      end
    end
  end
end