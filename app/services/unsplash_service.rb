class UnsplashService
  class << self

    def connection
      Faraday.new(url: 'https://api.unsplash.com/') do |faraday|
        faraday.params['client_id'] = ENV['unsplash_key']
      end
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def get_image(city)
      response = connection.get('search/photos') do |faraday|
        faraday.params['query'] = city
      end
      parse_json(response)
    end

  end
end
