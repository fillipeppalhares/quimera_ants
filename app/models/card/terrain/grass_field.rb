class Card::Terrain::GrassField < Card::Terrain
  source_slots do
    slot :plant, required: "Card::Source::Grass"
    slot :plant
  end
end
