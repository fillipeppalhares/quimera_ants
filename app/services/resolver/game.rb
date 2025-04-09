class Resolver::Game
  def self.call(input)
    return input if input.is_a? Game

    Game.find(input)
  rescue
    raise ArgumentError, "Could not resolve Game from input: #{input.inspect}"
  end
end
