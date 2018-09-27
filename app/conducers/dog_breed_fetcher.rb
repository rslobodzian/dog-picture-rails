class DogBreedFetcher
  def initialize(name=nil)
    @name  = name
  end

  def fetch
    begin
      JSON.parse(RestClient.get("https://dog.ceo/api/breed/#{ @name }/images/random").body)
    rescue Object => e
      default_body
    end
  end

  private

  def default_body
    {
      "status"  => "success",
      "message" => "https://images.dog.ceo/breeds/cattledog-australian/IMG_2432.jpg"
    }
  end
end
