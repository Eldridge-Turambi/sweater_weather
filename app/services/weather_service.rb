class WeatherService
  class << self
    def connection
      Faraday.new(url: 'https://api.openweathermap.org/data/2.5/') do |faraday|
        faraday.params['appid'] = ENV['weather_key']
      end
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def get_forecast_details(location)
      response = connection.get('onecall') do |faraday|
        faraday.params['lat'] = location.lattitude
        faraday.params['lon'] = location.longitude
      end
      parse_json(response)
    end
  end 

end
