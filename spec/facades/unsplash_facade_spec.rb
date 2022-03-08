require 'rails_helper'

RSpec.describe UnsplashFacade do
  it 'returns photo poro', :vcr do
    response = UnsplashFacade.get_image('denver')

    expect(response).to be_an(Image)
  end
end
