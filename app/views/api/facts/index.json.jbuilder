json.array! @facts do |fact|
  json.partial! "facts/fact", fact: fact, with_image: with_image?
end
