Heroine.destroy_all
Power.destroy_all

powers = [
  {name: "super strength", description: "gives the wielder super-human strengths" },
  {name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed" },
  {name: "super human senses", description: "allows the wielder to use her senses at a super-human level" },
  {name: "elasticity", description: "can stretch the human body to extreme lengths" }
]

powers.each {|power| Power.create(power)}

heroines = [
  {name: "Kamala Khan", super_name: "Ms. Marvel", power_id: Power.all.sample.id },
  {name: "Doreen Green", super_name: "Squirrel Girl", power_id: Power.all.sample.id },
  {name: "Gwen Stacy", super_name: "Spider-Gwen", power_id: Power.all.sample.id },
  {name: "Janet Van Dyne", super_name: "The Wasp", power_id: Power.all.sample.id },
  {name: "Wanda Maximoff", super_name: "Scarlet Witch", power_id: Power.all.sample.id },
  {name: "Carol Danvers", super_name: "Captain Marvel", power_id: Power.all.sample.id },
  {name: "Jean Grey", super_name: "Dark Phoenix", power_id: Power.all.sample.id },
  {name: "Ororo Munroe", super_name: "Storm", power_id: Power.all.sample.id },
  {name: "Kitty Pryde", super_name: "Shadowcat", power_id: Power.all.sample.id },
  {name: "Elektra Natchios", super_name: "Elektra", power_id: Power.all.sample.id }
]

heroines.each { |heroine| Heroine.create(heroine) }
