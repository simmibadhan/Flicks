json.array!(@actors) do |actor|
  json.extract! actor, :name, :dob, :biography, :rating, :view_count
  json.url actor_url(actor, format: :json)
end
