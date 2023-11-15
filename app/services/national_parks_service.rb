class NationalParksService < ApplicationService
  def conn 
    Faraday.new(url: "https://developer.nps.gov/") do |faraday|
      faraday.params["api_key"] = Rails.application.credentials.nps[:key]
    end
  end

  def get_url(url)
    conn.get(url)
  end
  
  def parks_by_state(state)
    json_parse(conn.get("api/v1/parks?stateCode=#{state}/current.json"))
  end
end