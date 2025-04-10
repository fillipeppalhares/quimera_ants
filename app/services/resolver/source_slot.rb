class Resolver::SourceSlot
  def self.call(nature:, prefer: [], forbid: [])
    candidates(nature:, prefer:, forbid:).sample
  end

  def self.candidates(nature:, prefer: [], forbid: [])
    Card::Source.descendants.select do |klass|
      matches_nature = klass.nature == nature
      not_forbidden  = (forbid & klass.traits).empty?
      has_preferred  = prefer.empty? || (prefer & klass.traits).any?

      matches_nature && not_forbidden && has_preferred
    end
  end
end
