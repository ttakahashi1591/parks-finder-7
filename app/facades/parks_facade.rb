class ParksFacade
  def initialize(state)
    @state = state
  end

  def parks
    service = NationalParksService.new

    json = service.parks_by_state(@state)

    @parks = json[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end