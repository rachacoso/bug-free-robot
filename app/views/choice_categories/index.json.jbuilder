json.array!(@choice_categories) do |choice_category|
  json.extract! choice_category, :id
  json.url choice_category_url(choice_category, format: :json)
end
