require "rails_helper"

describe Veteran do
  describe "validating the email address" do
    context "when an email address is the correct format" do
      let(:new_veteran) { Veteran.new(email: "hero@usa.com") }

      it "is valid" do
        expect(new_veteran).to be_valid
      end
    end

    context "when an email address is not the correct format" do

      let(:new_veteran) { Veteran.new(email: "bademail") }

      it "is not valid" do
        expect(new_veteran).to_not be_valid
      end
    end
  end

  describe "#name" do
    context "when a veteran has a first name or last name" do
      let(:veteran) do
        Veteran.create(email: "hero@usa.com", first_name: "Billy", last_name: "Bob")
      end

      it "returns the first name and last name" do
        expect(veteran.name).to eq("#{veteran.first_name} #{veteran.last_name}")
      end
    end

    context "when a veteran does not have a first name or last name" do

      let(:veteran) do
        Veteran.create(email: "hero@usa.com")
      end

      it "returns the email address" do
        expect(veteran.name).to eq(veteran.email)
      end

    end
  end
end
