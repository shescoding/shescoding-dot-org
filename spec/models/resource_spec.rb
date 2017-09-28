require "rails_helper"

RSpec.describe Resource, :type => :model do
  
  describe 'Model Resource' do

    let (:resource_one) { Resource.create( {title: "Imposter Syndrome", url: "https://counseling.caltech.edu/general/InfoandResources/Impostor", description: "General definition and information on the Imposter Syndrome, provided by the Caltech Counseling Center." } ) }

    it "has title, description and url" do
      expect(resource_one.title).to eq("Imposter Syndrome")
      expect(resource_one.url).to eq("https://counseling.caltech.edu/general/InfoandResources/Impostor")
      expect(resource_one.description).to eq("General definition and information on the Imposter Syndrome, provided by the Caltech Counseling Center.")
    end

  end
end
