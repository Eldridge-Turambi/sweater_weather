class Api::V1::ForecastController < ApplicationController

  def index
    forecast = WeatherFacade.forecast(params['location'])

    render(json: ForecastSerializer.new(forecast))
  end
end
