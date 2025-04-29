# Reproduction
Gene.find_or_create_by!(name: "Phagogenesis", phenotype: 1, dominance: 6, description: "Phagogenesis is a rare and powerful reproductive adaptation where an organism assimilates genetic material from consumed creatures. These foreign genes are integrated into its genome and passed down to offspring, enabling rapid evolutionary leaps across generations. No longer bound by the slow crawl of natural selection, species that possess phagogenesis can inherit strength, speed, cunning—or monstrosity—depending on what is devoured. This method of inheritance is unpredictable, but its potential is unmatched.", effects: [])
Gene.find_or_create_by!(name: "Reproductive Apoptosis", phenotype: 1, dominance: 7, description: "Programmed sterility in subordinate castes eliminates reproductive competition. These individuals live only to serve — the colony’s body, while the queen remains its soul.", effects: [])

# Chronotype
Gene.find_or_create_by!(name: "Diurnal", phenotype: 2, dominance: 4, description: "Active during daylight hours, these creatures rely on sunlight to guide their routines. Their senses are sharp in the morning glow but dulled under moonlight.", effects: [])
Gene.find_or_create_by!(name: "Nocturnal", phenotype: 2, dominance: 4, description: "Primarily active during the night, these creatures possess adaptations that enhance movement, perception, and survival in darkness. Their world thrives in silence and shadow, where most others sleep.", effects: [])
Gene.find_or_create_by!(name: "Cathemeral", phenotype: 2, dominance: 2, description: "With unpredictable periods of activity throughout the 24-hour cycle, cathemeral organisms don’t conform to fixed day or night schedules. This flexible rhythm can be influenced by food availability, temperature, or threats.", effects: [])

# Diet
Gene.find_or_create_by!(name: "Omnivore", phenotype: 3, dominance: 5, description: "Equally adept at digesting plant and animal matter, omnivores are flexible survivors, thriving in diverse ecosystems where specialization would be a weakness.", effects: [])
Gene.find_or_create_by!(name: "Carnivore", phenotype: 3, dominance: 5, description: "Specialized in consuming meat, carnivorous creatures are equipped with instincts and physiology for hunting, scavenging, or ambushing prey. Their energy comes from flesh, and their instincts often lean toward aggression or precision.", effects: [])
Gene.find_or_create_by!(name: "Herbivore", phenotype: 3, dominance: 5, description: "These creatures sustain themselves on plants, feeding on leaves, roots, fruits, or bark. They often develop adaptations for digestion and defense rather than aggression, thriving where flora is abundant.", effects: [])
Gene.find_or_create_by!(name: "Detritivore", phenotype: 3, dominance: 2, description: "These organisms feed on decomposing organic matter, recycling nutrients back into the ecosystem. Detritivores thrive in decay and play a vital ecological role.", effects: [])

# Integument
Gene.find_or_create_by!(name: "Chitinous Exoskeleton", phenotype: 4, dominance: 5, description: "Possesses a rigid external covering that provides protection against physical threats.", effects: [])

# Sociality
Gene.find_or_create_by!(name: "Eusocial", phenotype: 5, dominance: 2, description: "Lives and thrives in complex colonies, with castes and shared responsibilities.", effects: [])

# Structural Anatomy
Gene.find_or_create_by!(name: "Strong Neck Muscles", phenotype: 6, dominance: 3, description: "A dense network of cervical muscles allows this creature to lift and carry many times its own weight with ease. In battle or labor, its head becomes an extension of raw power — supporting oversized mandibles or hauling vital cargo for the colony.", effects: [])

# Metabolism
Gene.find_or_create_by!(name: "Efficient Metabolism", phenotype: 7, dominance: 2, description: "This gene allows the organism to extract maximum energy from minimal food, extending activity during scarcity. It also regulates internal functions to reduce energy waste, enabling sustained performance across fluctuating climates.", effects: [])

# Lifecycle
Gene.find_or_create_by!(name: "Multi-Stage Larval Instars", phenotype: 8, dominance: 1, description: "Growth in this species occurs through a series of distinct larval molts, each instar unlocking new cellular potential. Nutrition at each stage determines not just size — but fate.", effects: [])
Gene.find_or_create_by!(name: "Complete Holometabolism", phenotype: 8, dominance: 4, description: "This species undergoes complete metamorphosis. The larva, once a soft-bodied feeder, enters a chrysalis-like state where its body liquefies and reforms — reimagined, refined, reborn.", effects: [])

# Thermoregulation
Gene.find_or_create_by!(name: "Ectothermic", phenotype: 9, dominance: 2, description: "The fire does not burn within. This creature’s body dances to the rhythm of the world — warming under sunlight, slowing in the chill. Without internal heat, it becomes one with its surroundings, saving energy where others exhaust it. But beware the frost, for in stillness lies vulnerability.", effects: [])

# Vision
Gene.find_or_create_by!(name: "Ocellus", phenotype: 101, dominance: 3, description: "A simple light-sensing eye capable of detecting brightness and direction but not detailed images.", effects: [])
Gene.find_or_create_by!(name: "Compound Vision", phenotype: 101, dominance: 3, description: "Formed by numerous ommatidia, this eye provides a broad field of view and excels at motion detection. Though low in resolution, it allows for quick response to environmental changes.", effects: [])

# Auditory
Gene.find_or_create_by!(name: "Vibration Detection", phenotype: 102, dominance: 5, description: "Highly tuned sensors detect even the slightest tremors in the ground — distant footsteps, tunnel collapses, or the rumble of approaching war. For those who live in darkness, the world vibrates before it is ever seen.", effects: [])

# Olfactory
Gene.find_or_create_by!(name: "Basic Smelling", phenotype: 103, dominance: 5, description: "This basic olfactory system allows the creature to detect simple chemical signals in its environment, such as the scent of food, potential mates, or danger. While not as refined as more specialized smelling adaptations, it forms the foundation for more complex sensory behaviors.", effects: [])

# Pheromone detection
Gene.find_or_create_by!(name: "Trail Pheromone Detection", phenotype: 104, dominance: 3, description: "Able to detect and follow pheromone trails left by others, guiding movement through complex environments. This adaptation enables coordinated foraging, efficient navigation, and improved resource retrieval.", effects: [])
Gene.find_or_create_by!(name: "Alarm Pheromone Detection", phenotype: 104, dominance: 3, description: "Sensitive to distress pheromones released by conspecifics in danger. This detection triggers evasive behavior or defensive responses, enhancing group survival during threats.", effects: [])
Gene.find_or_create_by!(name: "Social Recognition Pheromone Detection", phenotype: 104, dominance: 3, description: "Allows precise identification of colony members and intruders through unique chemical signatures. Essential for maintaining social structure, coordinating tasks, and defending against outsiders.", effects: [])

# Legs
Gene.find_or_create_by!(name: "Hexapodal", phenotype: 201, dominance: 1, description: "This gene expresses a limb structure with six legs, typically arranged in three pairs along the thorax. Common among insects, hexapodal locomotion offers high stability and versatility on varied terrain. Organisms with this trait exhibit coordinated movement patterns such as alternating tripod gaits, enhancing balance and efficiency.", effects: [])

# Arms

# Wings

# Mandibles
Gene.find_or_create_by!(name: "Ant Mandibles", phenotype: 302, dominance: 1, description: "Robust, sickle-shaped mandibles, forged by evolution for both war and labor. These natural weapons can crush, cut, and carry — serving as the ant’s first and fiercest line of offense. In the chaos of battle or the discipline of construction, the mandibles never rest.", effects: [])

# Sensory Appendages
Gene.find_or_create_by!(name: "Ant Antennae", phenotype: 401, dominance: 1, description: "Slender, jointed sensory appendages attuned to a symphony of scents and vibrations. These delicate instruments are key to an ant’s awareness — reading pheromones, detecting movement, and maintaining the social harmony of the colony. Without antennae, an ant is alone in the dark.", effects: [])

# Gland
Gene.find_or_create_by!(name: "Metapleural Gland", phenotype: 403, dominance: 2, description: "A constantly active ancestral gland secretes antimicrobial compounds, defending the body against infection. It's the chemical secret behind subterranean survival — a living pharmacy embedded in the exoskeleton.", effects: [])
Gene.find_or_create_by!(name: "Trophallaxis", phenotype: 403, dominance: 3, description: "The mouth is not only for feeding — but for sharing. Nutrients, hormones, even chemical memories are passed from mouth to mouth, weaving a living web of nutrition and communication.", effects: [])

# Mobility Enhancers
Gene.find_or_create_by!(name: "Tarsal Claws", phenotype: 405, dominance: 5, description: "Tiny hooks at the ends of the legs grant traction over vertical, uneven, or even slick surfaces. Climbing, clinging, or bracing against harsh terrain becomes second nature.", effects: [])
