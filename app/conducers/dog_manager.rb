module DogManager
  def self.fetch(name = 'random')
    breed = Breed.find_or_initialize_by(name: name)
    if breed.persisted?
      breed
    else
      breed.pic_url = DogBreedFetcher.new.fetch['message']
      breed.save && breed
    end
  end
end
