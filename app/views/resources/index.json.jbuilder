json.array!(@resources) do |resource|
  json.extract! resource, :id, :title, :description
  json.url resource_url(resource, format: :json)
end
