  # frozen_string_literal: true

class Phenotype < EnumerateIt::Base
  associate_values(
    # General
    reproduction: 1,
    chronotype: 2,
    diet: 3,
    integument: 4,
    sociality: 5,
    structural_anatomy: 6,
    metabolism: 7,
    lifecycle: 8,
    thermoregulation: 9,

    # Sensory
    vision: 101,
    auditory: 102,
    olfactory: 103,
    pheromone_detection: 104,

    # Structural Appendages
    legs: 201,
    arms: 202,
    wings: 203,

    # Weaponry
    teeth_and_tusks: 301,
    mandibles: 302,
    claws_and_talons: 303,
    horns: 304,
    spines: 305,
    stingers: 306,
    beaks: 307,
    tails: 308,
    venoms_and_chemicals: 309,
    electric_organs: 310,
    projectile_and_spitting: 311,
    defensives: 312,

    # Utilities
    sensory_appendages: 401,
    manipulation_and_gripping: 402,
    glands: 403,
    storages: 404,
    mobility_enhancers: 405,
    balance_enhancers: 406,
  )
end
