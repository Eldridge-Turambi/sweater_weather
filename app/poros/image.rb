class Image
  attr_reader :id,
              :image,
              :credit

  def initialize(data)
    @id = nil
    @image = {location: data[:results][0][:tags][0][:title], image_url: data[:results][0][:urls][:raw]}
    @credit = {source: 'upslash.com', author: data[:results][0][:user][:username], logo: data[:results][0][:user][:profile_image][:small]}
  end
end
