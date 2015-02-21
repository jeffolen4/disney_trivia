json.array!(@answers) do |answer|
  json.extract! answer, :id, :answer, :is_correct, :belongs_to
  json.url answer_url(answer, format: :json)
end
