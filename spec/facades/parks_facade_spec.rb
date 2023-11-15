require 'rails_helper'

RSpec.describe ParksFacade do
  describe '#parks' do
    it 'returns an array of park objects' do
      VCR.use_cassette('parks_facade_parks') do
        state = 'TN'

        parks_facade = ParksFacade.new(state)

        parks = parks_facade.parks

        expect(parks).to be_an(Array)
        expect(parks.first).to be_a(Park)
      end
    end
  end
end