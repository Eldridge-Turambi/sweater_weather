require 'rails_helper'

RSpec.describe LocationFacade do
  it 'makes location porors', :vcr do
    location = LocationFacade.find_coordinates('denver')

    expect(location).to be_an_instance_of(Location)
    expect(location.lattitude).to be_a(Float)
    expect(location.longitude).to be_a(Float)
  end
end
