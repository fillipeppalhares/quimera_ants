class Card::Terrain::GrassField < Card::Terrain
  define_source_slots do
    slot nature: :plant, required: "Card::Source::Grass"
    slot nature: :plant
  end
end
