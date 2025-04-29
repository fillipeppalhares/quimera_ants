# frozen_string_literal: true

class Dominance < EnumerateIt::Base
  associate_values(
    dominant: 1,
    recessive: 2,
    codominant: 3,
    incomplete: 4,
    neutral: 5,
    unique: 6,
    exclusive: 7
  )
end
