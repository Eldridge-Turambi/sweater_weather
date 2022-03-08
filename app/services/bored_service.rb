class BoredService
  class << self

    def connection
      Faraday.new(url: 'http://www.boredapi.com/api/' )
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def find_activity(activity_type)
      response = connection.get('activity') do |faraday|
        faraday.params['type'] = activity_type
      end
      parse_json(response)
    end
  end
end
