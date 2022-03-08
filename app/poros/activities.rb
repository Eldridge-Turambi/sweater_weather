class Activities
  attr_reader :activity_1,
              :activity_2

  def initialize(data)
    @activity_1 = data[0]
    @activity_2 = data[1]
  end
end
