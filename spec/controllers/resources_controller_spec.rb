require "rails_helper"

describe ResourcesController do

  before(:all) do
    @resources = []
    resources_data = [
        { title: '#Ask4More',
          url: 'https://www.levo.com/ask4more',
          description: "This is a movement encouraging women to demand equal pay for equal work.",
          source: 'Levo League',
          public: true },
        { title: 'Resources, research & advocacy to level the playing field for women entrepreneurs',
          url: 'http://athenacenter.barnard.edu/entrepreneurs',
          description: "Provides resources, research & advocacy to level the playing field for women entrepreneurs.",
          source: 'Athena',
          public: true },
        { title: 'Django Girls',
          url: 'http://djangogirls.org/',
          description: "Django Girls is a non-profit organization that empowers and helps women to organize free, one-day programming workshops by providing tools, resources and support." ,
          source: 'Django Girls',
          public: true }
    ]
    resources_data.each do |resource_data|
      @resources << Resource.find_or_create_by!(resource_data)
    end
    @private_resource = Resource.find_or_create_by!({title: 'Private', url: 'http://private.org', description: 'private is private', public: false})
  end

  describe 'index' do

    it 'assigns @resources to public resources only' do
      get :index
      expect(assigns(:resources)).to include(@resources[0])
      expect(assigns(:resources)).to include(@resources[1])
      expect(assigns(:resources)).to include(@resources[2])
      expect(assigns(:resources)).not_to include(@private_resource)
    end

    it 'assigns @resources to public resources with a given tag' do
      r1 = @resources[0]
      r1.tag_list.add('tag1')
      r1.save!
      get :index, params: {tag: 'tag1'}
      expect(assigns(:resources)).to include(r1)
      expect(assigns(:resources)).not_to include(@resources[1])
      expect(assigns(:resources)).not_to include(@resources[2])
      expect(assigns(:resources)).not_to include(@private_resource)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

  end
end
