class ForecastSerializer
  include JSONAPI::Serializer

  set_id :id
  set_type "forecast"

  attributes :destination, :activities
end
