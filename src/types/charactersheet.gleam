////module containing the components of a character sheet 
//// 

import types/profession.{type Profession}

///type that contains the individual parts of a character sheet
pub type CharacterSheet {
  CharacterSheet(
    background: Background,
    abilities: Abilities,
    main_stats: MainStats,
  )
}

pub type MainStats {
  MainStats(health_points: Int, speed: Int, toughness: Int, soul: Int)
}

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
    courage: AbilityModifier,
    intelligence: AbilityModifier,
    intuition: AbilityModifier,
    charisma: AbilityModifier,
    dexterity: AbilityModifier,
    agility: AbilityModifier,
    constitution: AbilityModifier,
    strength: AbilityModifier,
    required_perks: List(Perk),
    required_flaws: List(Flaw),
    prohibited_perks: List(Perk),
    prohibited_flaws: List(Flaw),
    recommended_perks: List(Perk),
    recommended_flaws: List(Flaw),
    discouraged_perks: List(Perk),
    discouraged_flaws: List(Flaw),
  )
}

pub type Perk {
  Perk
}

pub type Flaw {
  Flaw
}

pub type Abilities {
  Abilities(
    courage: AbilityScore,
    intelligence: AbilityScore,
    intuition: AbilityScore,
    charisma: AbilityScore,
    dexterity: AbilityScore,
    agility: AbilityScore,
    constitution: AbilityScore,
    strength: AbilityScore,
  )
}

///defines ability score type
pub opaque type AbilityScore {
  AbilityScore(score: Int)
}

pub fn new_ability_score(score: Int) -> AbilityScore {
  case score {
    score if score <= 0 -> panic as "ability score can't be 0 or smaller"
    score if score > 20 -> panic as "ability score can't be higher than 20"
    _ -> AbilityScore(score)
  }
}

pub type AbilityModifier =
  fn(AbilityScore) -> AbilityScore
