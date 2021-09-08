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

  view: parameter_player {
    derived_table: {
      sql:
          SELECT
    players.code  AS `players.code`,
    concat(players.first_name, " ", players.second_name)  AS `players.name`,
    CASE WHEN players.element_type = 1 THEN "GK"
              WHEN players.element_type = 2 THEN "DEF"
              WHEN players.element_type = 3 THEN "MID"
              WHEN players.element_type = 4 THEN "FWD" END  AS `players.Position`
FROM fpl.players_detail  AS players_detail
LEFT JOIN fpl.players  AS players ON players.id = players_detail.element
WHERE (CASE WHEN players.element_type = 1 THEN "GK"
              WHEN players.element_type = 2 THEN "DEF"
              WHEN players.element_type = 3 THEN "MID"
              WHEN players.element_type = 4 THEN "FWD" END ) = '{{ players_detail.position_selector._parameter_value }}'
GROUP BY
    1,
    2,
    3 ;;
    }

    measure: count {
      type: count

    }

    dimension: players_code {
      type: number
      sql: ${TABLE}.`players.code` ;;
    }

    dimension: name {
      type: string
      sql: ${TABLE}.`players.name` ;;
    }

    dimension: players_position {
      type: string
      sql: ${TABLE}.`players.Position` ;;
    }
  }
