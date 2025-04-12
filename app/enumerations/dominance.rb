# frozen_string_literal: true

class Dominance < EnumerateIt::Base
  associate_values(
    dominant: 1,
    recessive: 2,
    codominant: 3,
    unique: 4,
    # incomplete: 5,
    # exclusive: 6,
    # neutral: 7
  )
end
