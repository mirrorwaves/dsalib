////module containing the components of a character sheet 
//// 

///type that contains the individual parts of a character sheet
pub type CharacterSheet

///type that describes the characters background
pub type Background {
  Background(
    name: String,
    family: String,
    age: Age,
    height: Height,
    weight: Weight,
    species: Species,
    profession: Profession,
  )
}

///type that contains character's age
pub opaque type Age {
  Age(age: Int)
}

///function that sets the character's age and checks for it's semantic validity
pub fn new_age(age) -> Age {
  case age {
    age if age <= 0 -> panic as "Age cannot be 0 or lower"
    age if age > 0 -> Age(age)
    _ -> panic as "Please enter a valid age for your character"
  }
}

///type that contains character's height
pub opaque type Height {
  Height(height: Int)
}

///function that sets character's height and checks for semantic validity
pub fn new_height(height) -> Height {
  case height {
    height if height <= 0 -> panic as "Height cannot be 0 or lower"
    height if height > 0 -> Height(height)
    _ -> panic as "Please enter a height for your character"
  }
}

///opaque type that contains character's weight
pub opaque type Weight {
  Weight(weight: Int)
}

///function that sets character's weight and checks for semantic validity
pub fn new_weight(weight) -> Weight {
  case weight {
    weight if weight <= 0 -> panic as "Weight cannot be 0 or lower"
    weight if weight > 0 -> Weight(weight)
    _ -> panic as "Please enter a valid weight"
  }
}

///type that describes a species and the specific modifications it includes
pub type Species {
  Species(
    name: String,
    base_hp: Int,
    base_toughness: Int,
    base_soul: Int,
    base_speed: Int,
    modifier_courage: Int,
    modifier_intelligence: Int,
    modifier_intuition: Int,
    modifier_charisma: Int,
    modifier_dexterity: Int,
    modifier_agility: Int,
    modifier_constitution: Int,
    modifier_strength: Int,
    intrinsic_perks: String,
    intrinsic_flaws: String,
    typical_perks: String,
    typical_flaws: String,
    atypical_perks: String,
    atypical_flaws: String,
  )
}

pub type Profession
