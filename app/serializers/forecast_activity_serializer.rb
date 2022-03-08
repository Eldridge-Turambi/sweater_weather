class ActivitiesSerializer
  include JSONAPI::Serializer

  set_id :id
  set_type "activities"

  attributes :destination, :activities
end
