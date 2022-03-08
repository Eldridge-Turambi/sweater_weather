class UnsplashFacade
  class << self
    def get_image(city)
      data = UnsplashService.get_image(city)

      Image.new(data)
    end
  end
end
