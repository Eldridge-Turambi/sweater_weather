require 'rails_helper'

RSpec.describe BoredFacade do
  it 'makes activity poro', :vcr do
      response = BoredFacade.find_activity('relaxation')

      expect(response).to be_an_instance_of(Activity)
  end

  it 'makes activities poro', :vcr do
    response = BoredFacade.find_activities('chicago')
    expect(response).to be_an_instance_of(Activities)
  end
end
