////module for the definition and handling of professions for dsalib
//// 

///type that describes a profession
pub type Profession {
  Profession(
    ap_value: Int,
    prerequisites: String,
    special_abilities: String,
    recommended_perks: String,
    recommended_flaws: String,
    atypical_perks: String,
    atypical_flaws: String,
    combat_techniques: String,
  )
}
