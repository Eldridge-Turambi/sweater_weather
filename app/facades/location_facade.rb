class LocationFacade
  class << self
    def find_coordinates(city)
      location = MapService.find_coordinates(city)
      coordinates = location[:results][0][:locations][0][:latLng]

      Location.new(coordinates)
    end
  end
end
