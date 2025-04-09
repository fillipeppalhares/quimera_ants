class Card::Terrain < Card
  belongs_to :game
  belongs_to :biome
  has_many :sources

  class << self
    def define_source_slots(&block)
      @source_slots = []

      dsl = Class.new do
        def initialize(slots)
          @slots = slots
        end

        def slot(**kwargs)
          @slots << kwargs
        end
      end

      dsl.new(@source_slots).instance_eval(&block)
    end

    def source_slots
      superclass_slots = superclass.respond_to?(:source_slots) ? superclass.source_slots : []
      superclass_slots + (@source_slots || [])
    end
  end
end
