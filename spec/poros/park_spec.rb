require "rails_helper"

RSpec.describe Park do
  it "exists and has readable attributes" do
    attributes = {
      fullName: "Yellowstone National Park",
      description: "Yellowstone National Park, located primarily in the U.S. state of Wyoming, is renowned for its geothermal wonders, diverse wildlife, and stunning landscapes, including the iconic Old Faithful geyser.",
      directionsInfo: "Use Google Maps!",
      operatingHours: [
        {
          standardHours: "24/7"
        }
      ]
    }

    park = Park.new(attributes)

    expect(park).to be_a Park
    expect(park.name).to eq(park.name)
    expect(park.description).to eq(park.description)
    expect(park.direction_info).to eq(park.direction_info)
    expect(park.hoop).to eq(park.hoop)
  end
end