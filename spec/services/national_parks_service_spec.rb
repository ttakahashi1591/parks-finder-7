require 'rails_helper'

describe NationalParksService do
  context "class methods" do
    context "#parks_by_state" do
      it "returns park data" do
        parks = NationalParksService.new.parks_by_state("TN")
        
        expect(parks).to be_a Hash
        expect(parks[:data]).to be_an Array

        park_data = parks[:data].first

        expect(park_data).to have_key :fullName
        expect(park_data[:fullName]).to be_a(String)

        expect(park_data).to have_key :description
        expect(park_data[:description]).to be_a(String)

        expect(park_data).to have_key :directionsInfo
        expect(park_data[:directionsInfo]).to be_a(String)

        expect(park_data).to have_key :operatingHours
        expect(park_data[:operatingHours][0]).to have_key :standardHours
        expect(park_data[:operatingHours][0][:standardHours]).to be_a(String)
      end
    end
  end
end