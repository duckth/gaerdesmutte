json.id fact.id
json.fact fact.fact

json.species do
  json.scientific_name fact.species.scientific_name
  json.common_name fact.species.common_name
end

json.photo do
  json.url url_for(photo.blob)
  json.photographer photo.photographer
  json.source photo.source
end
