json.array!(@arts_types) do |arts_type|
  json.extract! arts_type, :id
  json.extract! arts_type, :name
  json.extract! arts_type, :description
  json.url arts_type_url(arts_type, format: :json)
end
