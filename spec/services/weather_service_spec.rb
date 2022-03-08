require 'rails_helper'

RSpec.describe WeatherService do

  describe 'class methods' do
    it 'returns a response' do
      coordinates = LocationFacade.find_coordinates('denver')
      weather_data = WeatherService.get_forecast_details(coordinates)
      expect(weather_data).to be_a(Hash)
      expect(weather_data.keys).to include(:current, :daily, :hourly)
    end
  end
end
