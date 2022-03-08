require 'rails_helper'

RSpec.describe WeatherFacade do

  describe 'making poros' do
    it 'is able to make current weather poro' do
      response = WeatherFacade.current_weather('denver')

      expect(response).to be_a(CurrentWeather)
    end

    it 'is able to make daily weather poro' do
      response = WeatherFacade.daily_weather('denver')

      expect(response).to be_a(DailyWeather)
    end

    it 'is able to make hourly weather poro' do
      response = WeatherFacade.hourly_weather('denver')
      expect(response).to be_a(HourlyWeather)
    end
  end
end
