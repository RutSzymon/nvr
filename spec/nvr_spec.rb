require 'spec_helper'

describe Nvr do
  describe "via validations" do
    it "should verify presence of nip" do
      @nvr = Nvr.new(nil)
      @nvr.should_not be_valid
    end

    context "should verify length of nip" do
      it "length of nip shouldn't be shorter than 10" do
        @nvr = Nvr.new("12345")
        @nvr.should_not be_valid
      end

      it "length of nip shouldn't be longer than 10" do
        @nvr = Nvr.new("12345678901")
        @nvr.should_not be_valid
      end
    end

    context "should verify numericality of nip" do
      it "shouldn't accept only letters" do
        @nvr = Nvr.new("abcdefghij")
        @nvr.should_not be_valid
      end

      it "shouldn't accept numbers with letters" do
        @nvr = Nvr.new("12345678a0")
        @nvr.should_not be_valid
      end
    end

    it "nip always should be a string" do
      @nvr = Nvr.new(1234567890)
      @nvr.nip.should eq("1234567890")
    end

    context "checksum" do
      it "shouldn't accept incorrect nip number" do
        @nvr = Nvr.new("1234567890")
        @nvr.should_not be_valid
      end

      it "should accept correct nip number" do
        @nvr = Nvr.new("2010000304")
        @nvr.should be_valid
      end
    end
  end
end