# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Species.create(
  [
    {
      scientific_name: 'Troglodytes troglodytes',
      common_name_en: 'Eurasian wren',
      common_name_da: 'Gærdesmutte'
    },
    {
      scientific_name: 'Regulus regulus',
      common_name_en: 'Goldcrest',
      common_name_da: 'Fuglekonge'
    }
  ]
)

Fact.create(
  [
    {
      species_id: 1,
      fact_en: 'The eurasian wren has an enormous voice for its size, ten times louder, weight for weight, than a cockerel.',
      fact_da: 'Gærdesmutten har en usædvanlig høj stemme for sin størrelse, ti gange højere end en hane, relativt til deres vægt.'
    },
    {
      species_id: 2,
      fact_en: 'The goldcrest is the smallest bird in Europe, weighing just 5g.',
      fact_da: 'Fuglekongen er den mindste fugl i Europa, med en vægt på kun 5g.'
    },
    {
      species_id: 2,
      fact_en: 'The goldcrest builds its nest in trees, with lichen and moss, woven together with spider webs.',
      fact_da: 'Fuglekongen bygger sin rede i træer med lav og mos, som den væver sammen med spindelvæv.'
    }
  ]
)
