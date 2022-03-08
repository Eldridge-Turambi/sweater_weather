require 'rails_helper'

RSpec.describe 'Bored Service' do
  it 'returns a response', :vcr do
    response = BoredService.find_activity('relaxation')
    
    expect(response).to be_a(Hash)
    expect(response).to have_key(:activity)
    expect(response).to have_key(:type)
    expect(response).to have_key(:participants)
    expect(response).to have_key(:price)
  end
end
