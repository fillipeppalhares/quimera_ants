class Card::Terrain < Card
  class_attribute :source_slot_rules, default: []

  belongs_to :game
  belongs_to :biome
  has_many :sources
  
  after_initialize :resolve_slots, if: -> { new_record? }

  def resolve_slots
    source_slot_rules.each do |slot|
      if slot.required
          sources.build(game:, type: slot.required)
      else
        source = Resolver::SourceSlot.call(nature: slot.nature,
                                           prefer: slot.prefer,
                                           forbid: slot.forbid)

        next unless source

        next if sources.map(&:type).uniq.include?(source.name)

        sources << source.new(game:)
      end
    end
  end

  class << self
    def source_slots(&block)
      dsl = Dsl::SourceSlot.new
      dsl.instance_eval(&block)

      self.source_slot_rules = dsl.slots
    end

    # def source_slot_rules
    #   superclass_slots = superclass.respond_to?(:source_slots) ? superclass.source_slots : []
    #   superclass_slots + (@source_slots || [])
    # end
  end
end
