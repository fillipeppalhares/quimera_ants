# frozen_string_literal: true

class Temperature < EnumerateIt::Base
  associate_values(
    freezing: 1,
    very_cold: 2,
    cold: 3,
    cool: 4,
    mild: 5,
    warm: 6,
    hot: 7,
    very_hot: 8,
    scorching: 9
  )
end
