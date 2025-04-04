class Card::Source::Grass < Card::Source
  private

  def fill_yields
    self.yields = { grass_seed: }
  end

  def grass_seed
    { amount: rand(50..100), regen: rand(0.1..0.3).round(2) }
  end
end
