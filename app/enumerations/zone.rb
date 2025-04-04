# frozen_string_literal: true

class Zone < EnumerateIt::Base
  associate_values(
    arctic: 1,
    subarctic: 2,
    temperate: 3,
    tropical: 4,
    equatorial: 5,
    dry: 6
  )
end
