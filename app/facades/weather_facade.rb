class WeatherFacade
  class << self

    def forecast(location)
      Forecast.new(current_weather(location), daily_weather(location), hourly_weather(location))
    end

    def current_weather(location)
      coordinates = LocationFacade.find_coordinates(location)
      weather_data = WeatherService.get_forecast_details(coordinates)
      CurrentWeather.new(weather_data)
    end

    def daily_weather(location)
      coordinates = LocationFacade.find_coordinates(location)
      weather_data = WeatherService.get_forecast_details(coordinates)
      DailyWeather.new(weather_data)
    end

    def hourly_weather(location)
      coordinates = LocationFacade.find_coordinates(location)
      weather_data = WeatherService.get_forecast_details(coordinates)
      HourlyWeather.new(weather_data)
    end
  end
end
