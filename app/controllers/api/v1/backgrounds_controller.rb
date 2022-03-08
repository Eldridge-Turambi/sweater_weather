class Api::V1::BackgroundsController < ApplicationController
  def index
    photo = UnsplashFacade.get_image(params["location"])

    render(json: ImageSerializer.new(photo))
  end
end
