class Park
  attr_reader :name,
              :description,
              :direction_info,
              :hoop

  def initialize(attributes)
    @name             = attributes[:fullName]
    @description      = attributes[:description]
    @direction_info   = attributes[:directionsInfo]
    @hoop             = attributes[:operatingHours][0][:standardHours]
  end
end