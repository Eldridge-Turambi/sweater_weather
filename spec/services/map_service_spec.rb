require 'rails_helper'

RSpec.describe MapService do

  describe 'class methods' do
    it 'returns a response', :vcr do
      location = MapService.find_coordinates('denver')
      expect(location).to be_a(Hash)
      expect(location[:results][0][:locations][0][:latLng]).to have_key(:lat)
      expect(location[:results][0][:locations][0][:latLng][:lat]).to be_a(Float)
      expect(location[:results][0][:locations][0][:latLng]).to have_key(:lng)
      expect(location[:results][0][:locations][0][:latLng][:lng]).to be_a(Float)
    end
  end
end
