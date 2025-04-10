class Dsl::SourceSlot
  attr_accessor :slots
  private       :slots=

  def initialize
    self.slots = []
  end

  def slot(nature, required: nil, prefer: [], forbid: [])
    self.slots << SourceSlot.new(nature:, required:, prefer: Array(prefer), forbid: Array(forbid))
  end
end
