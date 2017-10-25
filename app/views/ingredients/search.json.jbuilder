json.array! @ingredients do |ingredient|
  json.id ingredient.id
  json.text ingredient.name
end
