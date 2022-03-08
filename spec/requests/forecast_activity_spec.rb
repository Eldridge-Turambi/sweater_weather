require 'rails_helper'

RSpec.describe 'forcastactivity ' do

  it 'returns a forecast activity', :vcr do

    get '/api/v1/activities?destination=chicago'
    json = JSON.parse(response.body, symbolize_names: true)
    

    # expect(response).to be_successful
    # expect(response.status).to eq(200)
    # expect(json).to be_a(Hash)
    ##Add sad path testing
  end
end
