view: player_fact {
    derived_table: {
      explore_source: players_detail {
        column: name { field: players.name }
        column: average_vapm {}
        column: points_per_game {}
        column: total_assists {}
        column: total_bonus {}
        column: total_fantasy_points {}
        column: total_goals {}
        column: total_saves {}
      }
    }
    dimension: name {
      html: {{ value }} - {{ total_fantasy_points._value }}  ;;
    }
    dimension: average_vapm {
      label: "Players Detail Average VAPM"
      description: "Value add per minutes ( (Points - 2) / Value )"
      value_format: "#,##0.0000"
      type: number
    }
    dimension: points_per_game {
      type: number
    }
    dimension: total_assists {
      description: "How many assists the player has provided"
      type: number
    }
    dimension: total_bonus {
      description: "Not sure"
      type: number
    }
    dimension: total_fantasy_points {
      type: number
    }


    dimension: total_goals {
      description: "How many goals scored"
      type: number
    }
    dimension: total_saves {
      description: "How many saves the goalkeeper made"
      type: number
    }
  }
