require "rails_helper"

describe Veteran do
  describe "validating the email address" do
    context "when an email address is the correct format" do
      let(:new_veteran) { build(:veteran) }

      it "is valid" do
        expect(new_veteran).to be_valid
      end
    end

    context "when an email address is not the correct format" do

      let(:new_veteran) { build(:veteran, email: "bademail") }

      it "is not valid" do
        expect(new_veteran).to_not be_valid
      end
    end
  end

  describe "#name" do
    context "when a veteran has a first name or last name" do
      let(:veteran) { create(:veteran) }

      before do
        expect(veteran.first_name).to_not be_nil
        expect(veteran.last_name).to_not be_nil
      end

      it "returns the first name and last name" do
        expect(veteran.name).to eq("#{veteran.first_name} #{veteran.last_name}")
      end
    end

    context "when a veteran does not have a first name or last name" do

      let(:veteran) { create(:veteran, first_name: nil, last_name: nil) }

      it "returns the email address" do
        expect(veteran.name).to eq(veteran.email)
      end

    end
  end
end
