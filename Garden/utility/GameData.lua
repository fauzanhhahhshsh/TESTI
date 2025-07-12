local data = {
  fruit = {"All Selection" ,"Aloe Vera", "Apple", "Avocado", "Bamboo", "Banana", "Banana", "Beanstalk", "Bee Balm", "Bell Pepper", "Bendboo", "Blood Banana", "Blue Lollipop", "Blueberry", "Bone Blossom", "Boneboo", "Burning Bud", "Cacao", "Cactus", "Cantaloupe", "Carrot", "Cauliflower", "Celestiberry", "Ceramic", "Cherry Blossom", "Chocolate Carrot", "Cocovine", "Coconut", "Cranberry", "Crimson Vine", "Crocus", "Cursed Fruit", "Daffodil", "Dandelion", "Delphinium", "Dragon Fruit", "Dragon Pepper", "Durian", "Easter Egg", "Eggplant", "Elephant Ears", "Ember Lily", "Feijoa", "Firefly Fern", "Firework Flower", "Foxglove", "Fossilight", "Grape", "Green Apple", "Guanabana", "Hive Fruit", "Honeysuckle", "Horned Dinoshroom", "Ice Cream Bean", "Kiwi", "Lavender", "Lemon", "Liberty Lily", "Lilac", "Lily of the Valley", "Lime", "Loquat", "Lotus", "Lumira", "Manuka Flower", "Mango", "Mega Mushroom", "Merica Mushroom", "Mint", "Moon Blossom", "Moon Melon", "Moon Mango", "Moonflower", "Moonglow", "Mushroom", "Nectar Thorn", "Nectarine", "Nectarshade", "Noble Flower", "Orange Tulip", "Papaya", "Paradise Petal", "Parasol Flower", "Passionfruit", "Peace Lily", "Peach", "Pepper", "Pear", "Pineapple", "Pink Lily", "Pink Tulip", "Pitcher Plant", "Plasma", "Prickly Pear", "Pumpkin", "Purple Cabbage", "Purple Dahlia", "Rafflesia", "Raspberry", "Red Lollipop", "Rose", "Rosy Delight", "Soul Fruit", "Stonebite", "Starfruit", "Strawberry", "Sugar Apple", "Succulent", "Suncoil", "Sunflower", "Traveler's Fruit", "Tomato", "Venus Fly Trap", "Violet Corn", "Watermelon", "White Mulberry", "Wild Carrot"},
  mutation = {
    "Shocked", "Windstruck", "Dawnbound", "Twisted", "Cloudtouched", 
    "Voidtouched", "Wet", "Fried", "Molten", "Alienlike", 
    "Galactic", "Aurora", "Chilled", "Sundried", "Wiltproof", 
    "Drenched", "Verdant", "Paradisal", "Frozen", "Disco", 
    "Choc", "Plasma", "Heavenly", "Burnt", "Cooked", 
    "Moonlit", "Bloodlit", "Zombified", "Celestial", "Meteoric", 
    "HoneyGlazed", "Pollinated", "Amber", "OldAmber", "AncientAmber", 
    "Sandy", "Clay", "Ceramic", "Friendbound", "Tempestuous", 
    "Infected"
  },
  pet = {
    "Axolotl", "Bald Eagle", "Bear Bee", "Bee", "Black Bunny", "Blood Hedgehog", "Blood Kiwi", "Blood Owl",
    "Brontosaurus", "Brown Mouse", "Bunny", "Butterfly", "Capybara", "Caterpillar", "Cat", "Ceramic", "Chicken",
    "Chicken Zombie", "Cooked Owl", "Cow", "Crab", "Deer", "Disco Bee", "Dog", "Echo Frog", "Fennec Fox", "Firefly",
    "Flamingo", "Frog", "Giant Ant", "Golden Bee", "Golden Lab", "Grey Mouse", "Hamster", "Hedgehog", "Honey Bee",
    "Hyacinth Macaw", "Kiwi", "Meerkat", "Mimic Octopus", "Mole", "Monkey", "Moon Cat", "Moth", "Night Owl",
    "Orange Tabby", "Orangutan", "Ostrich", "Owl", "Pack Bee", "Panda", "Peacock", "Petal Bee", "Pig", "Polar Bear",
    "Praying Mantis", "Pterodactyl", "Queen Bee", "Raccoon", "Raptor", "Red Fox", "Red Giant Ant", "Rooster",
    "Sand Snake", "Scarlet Macaw", "Sea Otter", "Sea Turtle", "Seagull", "Seal", "Silver Monkey", "Snail",
    "Spotted Deer", "Squirrel", "Starfish", "Stegosaurus", "T-Rex", "Tarantula Hawk", "Toucan", "Triceratops",
    "Turtle", "Wasp"
  },
  crate = {"Dino Crate", "Mysterious Crate", "Sign Crate", "Common Gnome Crate", "Farmers Gnome Crate", "Fun Crate", "Classic Gnome Crate", "Statue Crate", "Beach Crate", "Summer Fun Crate", "Oasis Crate", "Exclusive Cosmetic Crate", "Twilight Crate", "July 4th Crate", "Bloodmoon Crate", "Bee Crate", "Honey Crafters Crate", "Iconic Gnome Crate" },
  egg = { "Anti Bee Egg", "Bee Egg", "Bug Egg", "Common Egg", "Common Summer Egg", "Divine Egg", "Epic Egg", "Exotic Bug Egg", "Legendary Egg", "Mythical Egg", "Night Egg", "Paradise Egg", "Premium Anti Bee Egg", "Rare Egg", "Rare Summer Egg", "Uncommon Egg", "Oasis Egg", "Dinosaur Egg" },
  place_gear = { "Basic Sprinkler", "Advanced Sprinkler", "Godly Sprinkler", "Master Sprinkler", "Lightning Rod", "Chocolate Sprinkler", "Tropical Sprinkler", "Berry Blusher Sprinkler", "Spice Spritzer Sprinkler", "Sweet Soaker Sprinkler", "Flower Froster Sprinkler", "Stalk Sprout Sprinkler", "Night Staff", "Star Caller", "Honey Sprinkler" },
  craft = {
    gear = {
      ["Lightning Rod"] = {
        itemname = "Lightning Rod",
        recipe = { "Basic Sprinkler", "Advanced Sprinkler", "Godly Sprinkler" },
        cost = 500000,
        currency = "Sheckles",
        timeToCraft = 2700,
        machine = "GearEventWorkbench"
      },
      ["Reclaimer"] = {
        itemname = "Reclaimer",
        recipe = { "Common Egg", "Harvest Tool" },
        cost = 500000,
        currency = "Sheckles",
        timeToCraft = 1500,
        machine = "GearEventWorkbench"
      },
      ["Tropical Mist Sprinkler"] = {
        itemname = "Tropical Mist Sprinkler",
        recipe = { "Coconut", "Dragon Fruit", "Mango", "Godly Sprinkler" },
        cost = nil,
        currency = nil,
        timeToCraft = 3600,
        machine = "GearEventWorkbench"
      },
      ["Berry Blusher Sprinkler"] = {
        itemname = "Berry Blusher Sprinkler",
        recipe = { "Grape", "Blueberry", "Strawberry", "Godly Sprinkler" },
        cost = nil,
        currency = nil,
        timeToCraft = 3600,
        machine = "GearEventWorkbench"
      },
      ["Spice Spritzer Sprinkler"] = {
        itemname = "Spice Spritzer Sprinkler",
        recipe = { "Pepper", "Ember Lily", "Cacao", "Master Sprinkler" },
        cost = nil,
        currency = nil,
        timeToCraft = 3600,
        machine = "GearEventWorkbench"
      },
      ["Sweet Soaker Sprinkler"] = {
        itemname = "Sweet Soaker Sprinkler",
        recipe = { "Watermelon", "Watermelon", "Watermelon", "Master Sprinkler" },
        cost = nil,
        currency = nil,
        timeToCraft = 3600,
        machine = "GearEventWorkbench"
      },
      ["Flower Froster Sprinkler"] = {
        itemname = "Flower Froster Sprinkler",
        recipe = { "Orange Tulip", "Daffodil", "Advanced Sprinkler", "Basic Sprinkler" },
        cost = nil,
        currency = nil,
        timeToCraft = 3600,
        machine = "GearEventWorkbench"
      },
      ["Stalk Sprout Sprinkler"] = {
        itemname = "Stalk Sprout Sprinkler",
        recipe = { "Bamboo", "Beanstalk", "Mushroom", "Advanced Sprinkler" },
        cost = nil,
        currency = nil,
        timeToCraft = 3600,
        machine = "GearEventWorkbench"
      },
      ["Mutation Spray Choc"] = {
        itemname = "Mutation Spray Choc",
        recipe = { "Cleaning Spray", "Cacao" },
        cost = 200000,
        currency = "Sheckles",
        timeToCraft = 720,
        machine = "GearEventWorkbench"
      },
      ["Mutation Spray Chilled"] = {
        itemname = "Mutation Spray Chilled",
        recipe = { "Cleaning Spray", "Godly Sprinkler" },
        cost = 500000,
        currency = "Sheckles",
        timeToCraft = 300,
        machine = "GearEventWorkbench"
      },
      ["Mutation Spray Pollinated"] = {
        itemname = "Mutation Spray Pollinated",
        recipe = { "Cleaning Spray", "Bee Balm" },
        cost = 25,
        currency = "Honey",
        timeToCraft = 300,
        machine = "GearEventWorkbench"
      },
      ["Mutation Spray Shocked"] = {
        itemname = "Mutation Spray Shocked",
        recipe = { "Cleaning Spray", "Lightning Rod" },
        cost = 1000000,
        currency = "Sheckles",
        timeToCraft = 1800,
        machine = "GearEventWorkbench"
      },
      ["Honey Crafters Crate"] = {
        itemname = "Honey Crafters Crate",
        recipe = { "Bee Crate" },
        cost = 12,
        currency = "Honey",
        timeToCraft = 1800,
        machine = "GearEventWorkbench"
      },
      ["Anti Bee Egg"] = {
        itemname = "Anti Bee Egg",
        recipe = { "Bee Egg" },
        cost = 25,
        currency = "Honey",
        timeToCraft = 7200,
        machine = "GearEventWorkbench"
      },
      ["Pack Bee"] = {
        itemname = "Pack Bee",
        recipe = { "Anti Bee Egg", "Sunflower", "Purple Dahlia" },
        cost = 250,
        currency = "Honey",
        timeToCraft = 14400,
        machine = "GearEventWorkbench"
      }
    },
    dino = {
      ["Mutation Spray Amber"] = {
        itemname = "Mutation Spray Amber",
        recipe = { "Cleaning Spray", "Dinosaur Egg" },
        cost = 1000000,
        currency = "Sheckles",
        timeToCraft = 3600,
        machine = "DinoEventWorkbench"
      },
      ["Ancient Seed Pack"] = {
        itemname = "Ancient Seed Pack",
        recipe = { "Dinosaur Egg" },
        cost = 5500000,
        currency = "Sheckles",
        timeToCraft = 3600,
        machine = "DinoEventWorkbench"
      },
      ["Dino Crate"] = {
        itemname = "Dino Crate",
        recipe = { "Dinosaur Egg" },
        cost = 5500000,
        currency = "Sheckles",
        timeToCraft = 1800,
        machine = "DinoEventWorkbench"
      }
    },
    seed = {
      ["Crafters Seed Pack"] = {
        itemname = "Crafters Seed Pack",
        recipe = { "Flower Seed Pack" },
        cost = 10,
        currency = "Honey",
        timeToCraft = 1200,
        machine = "SeedEventWorkbench"
      },
      ["Peace Lily"] = {
        itemname = "Peace Lily",
        recipe = { "Rafflesia", "Cauliflower" },
        cost = 3,
        currency = "SummerCoins",
        timeToCraft = 600,
        machine = "SeedEventWorkbench"
      },
      ["Aloe Vera"] = {
        itemname = "Aloe Vera",
        recipe = { "Peace Lily", "Prickly Pear" },
        cost = 18,
        currency = "SummerCoins",
        timeToCraft = 600,
        machine = "SeedEventWorkbench"
      },
      ["Guanabana"] = {
        itemname = "Guanabana",
        recipe = { "Aloe Vera", "Prickly Pear", "Banana" },
        cost = 30,
        currency = "SummerCoins",
        timeToCraft = 600,
        machine = "SeedEventWorkbench"
      },
      ["Manuka Flower"] = {
        itemname = "Manuka Flower",
        recipe = { "Daffodil", "Orange Tulip" },
        cost = 6,
        currency = "Honey",
        timeToCraft = 600,
        machine = "SeedEventWorkbench"
      },
      ["Dandelion"] = {
        itemname = "Dandelion",
        recipe = { "Bamboo", "Bamboo", "Manuka Flower" },
        cost = 20,
        currency = "Honey",
        timeToCraft = 960,
        machine = "SeedEventWorkbench"
      },
      ["Lumira"] = {
        itemname = "Lumira",
        recipe = { "Pumpkin", "Pumpkin", "Dandelion", "Flower Seed Pack" },
        cost = 40,
        currency = "Honey",
        timeToCraft = 1200,
        machine = "SeedEventWorkbench"
      },
      ["Honeysuckle"] = {
        itemname = "Honeysuckle",
        recipe = { "Pink Lily", "Purple Dahlia" },
        cost = 80,
        currency = "Honey",
        timeToCraft = 1440,
        machine = "SeedEventWorkbench"
      },
      ["Bee Balm"] = {
        itemname = "Bee Balm",
        recipe = { "Crocus", "Lavender" },
        cost = 10,
        currency = "Honey",
        timeToCraft = 900,
        machine = "SeedEventWorkbench"
      },
      ["Nectar Thorn"] = {
        itemname = "Nectar Thorn",
        recipe = { "Cactus", "Cactus", "Cactus", "Nectarshade" },
        cost = 20,
        currency = "Honey",
        timeToCraft = 1800,
        machine = "SeedEventWorkbench"
      },
      ["Suncoil"] = {
        itemname = "Suncoil",
        recipe = { "Crocus", "Daffodil", "Dandelion", "Pink Lily" },
        cost = 40,
        currency = "Honey",
        timeToCraft = 2700,
        machine = "SeedEventWorkbench"
      }
    }
  }
}

return data
