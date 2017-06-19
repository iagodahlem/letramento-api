json.array! @texts do |text|
  json.id text.id
  json.title text.title
  json.description text.description
  json.body text.body
end
