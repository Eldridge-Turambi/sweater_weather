require 'rails_helper'

RSpec.describe UnsplashService do

  describe 'class methods' do
    it 'returns a response', :vcr do
      image_response = UnsplashService.get_image('denver')

      expect(image_response).to be_a(Hash)

      # coordinates = LocationFacade.find_coordinates('denver')
      # weather_data = WeatherService.get_forecast_details(coordinates)
      # expect(weather_data).to be_a(Hash)
      # expect(weather_data.keys).to include(:current, :daily, :hourly)
    end
  end
end
