require 'rails_helper'

RSpec.describe WeatherFacade do

  describe 'making poros' do
    it 'is able to make current weather poro', :vcr do
      response = WeatherFacade.current_weather('denver')

      expect(response).to be_a(CurrentWeather)
    end

    it 'is able to make daily weather poro', :vcr do
      response = WeatherFacade.daily_weather('denver')

      expect(response).to be_a(DailyWeather)
    end

    it 'is able to make hourly weather poro', :vcr do
      response = WeatherFacade.hourly_weather('denver')
      expect(response).to be_a(HourlyWeather)
    end

    it 'is able to make all forecast poro', :vcr do
      response = WeatherFacade.forecast('denver')
      expect(response).to be_a(Forecast)
    end
  end
end
