class BoredFacade
  class << self

    def find_activity(activity_type)
      json_data = BoredService.find_activity(activity_type)
      Activity.new(json_data)
    end

    def find_activities(location)
      coordinates = LocationFacade.find_coordinates(location)
      weather_data = WeatherService.get_forecast_details(coordinates)
      recreational_activity = BoredFacade.find_activity('relaxation')
      two_activities = [recreational_activity]
      if weather_data[:current][:temp] >= 288.70
        other_activity = BoredFacade.find_activity('recreational')
        two_activities << other_activity
      elsif weather_data[:current][:temp] >= 283.15 && weather_data[:current][:temp] < 288.70
        other_activity = BoredFacade.find_activity('busywork')
        two_activities << other_activity
      elsif weather_data[:current][:temp] < 283.15
        other_activity = BoredFacade.find_activity('cooking')
        two_activities << other_activity
      end

      Activities.new(two_activities)
    end

  end

end
