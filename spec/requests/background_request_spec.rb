require 'rails_helper'

RSpec.describe 'background upsplash request', :vcr do
  it 'returns json' do
    get '/api/v1/backgrounds?location=denver'

    expect(response.status).to eq(200)

    json = JSON.parse(response.body, symbolize_names: true)
    expect(json).to be_a(Hash)
    expect(json[:data][:attributes]).to have_key(:image)
    expect(json[:data][:attributes]).to have_key(:credit)
  end
end
