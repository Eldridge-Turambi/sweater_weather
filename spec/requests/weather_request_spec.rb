require 'rails_helper'

RSpec.describe 'weather api' do

  it 'returns a forecast', :vcr do

    ## Below is to allow test to hit the api online
    #WebMock.allow_net_connect!

    city_params = {
      'location': 'denver,co'
    }
    # get '/api/v1/forecast?location=denver,co'
    get '/api/v1/forecast', params: city_params
    json = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(response.status).to eq(200)
    expect(json).to be_a(Hash)
  end
end
