json.array!(@movies) do |movie|
  json.extract! movie, :title, :director, :release_date, :synopsis, :rating, :view_count
  json.url movie_url(movie, format: :json)
end
