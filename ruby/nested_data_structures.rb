beach_volleyball_teams = {
  team_1: {
    members: [
      "John",
      "Kory"
    ],
    team_info: {
      rank: 4,
      team_mascot: "Armadillo",
      team_colors: [
        "blue",
        "yellow"
      ]
    }
  },
  team_2: {
    members: [
      "Roger",
      "Anthony"
    ],
    team_info: {
      rank: 2,
      team_mascot: "Dolphin",
      team_colors: [
        "green",
        "orange"
      ]
    }
  },
  team_3: {
    members: [
      "Martin",
      "Jim"
    ],
    team_info: {
      rank: 3,
      team_mascot: "Narwhal",
      team_colors: [
        "white",
        "purple"
      ]
    }
  },
  team_4: {
    members: [
      "Ed",
      "Frank"
    ],
    team_info: {
      rank: 1,
      team_mascot: "Turtle",
      team_colors: [
        "pink",
        "black"
      ]
    }
  },
}

p beach_volleyball_teams[:team_3][:members][0]
p beach_volleyball_teams[:team_2][:team_info][:rank]
p beach_volleyball_teams[:team_4][:team_info][:team_mascot]
p beach_volleyball_teams[:team_1][:team_info][:team_colors][1]