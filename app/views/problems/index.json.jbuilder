json.array!(@problems) do |problem|
  json.extract! problem, :id, :name, :enunciation, :test_case, :difficulty
  json.url problem_url(problem, format: :json)
end
