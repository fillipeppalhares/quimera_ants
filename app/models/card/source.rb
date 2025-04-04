class Card::Source < Card
  attribute :yields, default: {}

  belongs_to :game
  belongs_to :terrain

  before_create :fill_yields

  def yields
    yields_in_database.deep_symbolize_keys
  end

  private

  def collect(yield_name:, amount: 1)
    return unless yields.keys.include?(yield_name)

    yields_dup = yields
    yields_dup[yield_name][:amount] -= amount

    amount.times.map { Card::Food.new(yield_name) } if update(yields: yields_dup)
  end

  def method_missing(method_id, *args)
    str = method_id.id2name

    return super(method_id, *args) unless str.starts_with?("collect_")

    yield_name = str.sub("collect_", "").to_sym

    params    = args.reduce({ yield_name: }, :merge)
    resources = collect(**params)

    return super(method_id, *args) unless resources

    resources
  end
end
