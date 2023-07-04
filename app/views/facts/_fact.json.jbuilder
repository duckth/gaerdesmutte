json.id fact.id
json.fact fact.fact


if with_species_info
  json.species do
    json.scientific_name fact.species.scientific_name
    json.common_name fact.species.common_name
  end
end

if with_image
  json.photo do
    json.url url_for(photo.blob)
    json.photographer photo.photographer
    json.source photo.source
  end
end
