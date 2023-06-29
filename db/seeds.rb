# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Species.create(scientific_name: 'Troglodytes troglodytes', common_name: 'Eurasian wren')
Species.create(scientific_name: 'Regulus regulus', common_name: 'Goldcrest')
Fact.create(species_id: 1, fact: 'The eurasian wren has an enormous voice for its size, ten times louder, weight for weight, than a cockerel.')
Fact.create(species_id: 2, fact: 'The goldcrest is the smallest bird in Europe, weighing just 5g.')
Fact.create(species_id: 2, fact: 'The goldcrest builds its nest in trees, with lichen and moss, woven together with spider webs.')
