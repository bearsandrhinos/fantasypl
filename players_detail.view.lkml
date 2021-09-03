view: players_detail {
   sql_table_name: fpl.players_detail ;;

  drill_fields: [fixture, total_fantasy_points]

  parameter: reporting_duration {
    type: unquoted
    allowed_value: {
      label: "Last 14 Days"
      value: "last_14_days"
    }
    allowed_value: {
      label: "Last 30 Days"
      value: "last_30_days"
    }
    allowed_value: {
      label: "Last 90 Days"
      value: "last_90_days"
    }
    allowed_value: {
      label: "All Days"
      value: "all_days"
    }
  }

  dimension: test_parameter_string {
    type: string
    sql: '{{ reporting_duration._parameter_value }}' ;;
  }

  parameter: position_selector {
    type: unquoted
    default_value: "FWD"
    allowed_value: {
      label: "FWD"
      value: "FWD"
    }
    allowed_value: {
      label: "GK"
      value: "GK"
    }
    allowed_value: {
      label: "MID"
      value: "MID"
    }
    allowed_value: {
      label: "DEF"
      value: "DEF"
    }
  }


  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assists {
    type: number
    sql: ${TABLE}.assists ;;
  }

  dimension: bonus {
    type: number
    sql: ${TABLE}.bonus ;;
  }


  dimension: bps {
    type: number
    sql: ${TABLE}.bps ;;
  }

  dimension: clean_sheets {
    type: number
    sql: ${TABLE}.clean_sheets ;;
  }

  dimension: creativity {
    type: number
    sql: ${TABLE}.creativity ;;
  }

  dimension: element {
    type: number
    sql: ${TABLE}.element ;;
  }

  dimension: fixture {
    type: number
    sql: ${TABLE}.fixture ;;
  }

  dimension: fouls {
    type: number
    sql: ${TABLE}.fouls ;;
  }

  dimension: goals_conceded {
    type: number
    sql: ${TABLE}.goals_conceded ;;
  }

  dimension: goals_scored {
    type: number
    sql: ${TABLE}.goals_scored ;;
  }

  dimension: ict_index {
    type: number
    sql: ${TABLE}.ict_index ;;
  }

  dimension: influence {
    type: number
    sql: ${TABLE}.influence ;;
  }

  dimension: key_passes {
    type: number
    sql: ${TABLE}.key_passes ;;
  }

  dimension: kickoff_time {
    type: string
    sql: ${TABLE}.kickoff_time ;;
  }

  dimension: minutes {
    type: number
    sql: ${TABLE}.minutes ;;
  }

  dimension: opponent_team {
    type: number
    sql: ${TABLE}.opponent_team ;;
  }

  dimension: own_goals {
    type: number
    sql: ${TABLE}.own_goals ;;
  }

  dimension: penalties_missed {
    type: number
    sql: ${TABLE}.penalties_missed ;;
  }

  dimension: penalties_saved {
    type: number
    sql: ${TABLE}.penalties_saved ;;
  }

  dimension: red_cards {
    type: number
    sql: ${TABLE}.red_cards ;;
  }

  dimension: round {
    label: "Game Week"
    type: number
    sql: ${TABLE}.round ;;
    html: Game Week {{value}} ;;
  }



  dimension: saves {
    type: number
    sql: ${TABLE}.saves ;;
  }

  dimension: selected {
    type: number
    sql: ${TABLE}.selected ;;
  }

  dimension: team_a_score {
    type: number
    sql: ${TABLE}.team_a_score ;;
  }

  dimension: team_h_score {
    type: number
    sql: ${TABLE}.team_h_score ;;
  }

  dimension: threat {
    type: number
    sql: ${TABLE}.threat ;;
  }

  dimension: total_points {
    type: number
    sql: ${TABLE}.total_points ;;
  }

  dimension: transfers_balance {
    type: number
    sql: ${TABLE}.transfers_balance ;;
  }

  dimension: transfers_in {
    type: number
    sql: ${TABLE}.transfers_in ;;
  }

  dimension: transfers_out {
    type: number
    sql: ${TABLE}.transfers_out ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value/10 ;;
    value_format: "\"£\"#.0\" K\""
  }

  dimension: vapm {
    label: "VAPM"
    description: "Value add per minutes ( (Points - 2) / Value )"
    type: number
    sql: (${total_points} - 2) / (${value} / 10) ;;
    hidden: yes
  }

  dimension: was_home {
    type: number
    sql: ${TABLE}.was_home ;;
  }

  dimension: yellow_cards {
    type: number
    sql: ${TABLE}.yellow_cards ;;
  }

  ###############################

  # Measures

  ###############################

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: total_minutes {
    description: "How many minutes played"
    type: sum
    sql: ${minutes} ;;
  }

  measure: total_goals {
    description: "How many goals scored"
    type: sum
    sql: ${goals_scored} ;;
  }

  measure: total_assists {
    description: "How many assists the player has provided"
    type: sum
    sql: ${assists} ;;
  }

  measure: total_goals_conceded {
    description: "How many goals the player let in"
    type: sum
    sql: ${goals_conceded} ;;
  }

  measure: total_clean_sheets {
    description: "How many times there were zero goals conceded"
    type: sum
    sql: ${clean_sheets} ;;
  }

  measure: total_own_goals {
    description: "How many times a player scored on his own goal"
    type: sum
    sql: ${own_goals} ;;
  }

  measure: total_penalties_saved {
    group_label: "Penalties"
    description: "Total penalty kicks saved"
    type: sum
    sql: ${penalties_saved} ;;
  }

  measure: total_penalties_missed {
    group_label: "Penalties"
    description: "Total penalty kicks that did not score"
    type: sum
    sql: ${penalties_missed} ;;
  }

  measure: total_yellow_cards {
    group_label: "Discipline"
    description: "How many yellow cards received"
    type: sum
    sql: ${yellow_cards} ;;
  }

  measure: total_red_cards {
    group_label: "Discipline"
    description: "How many red cards received"
    type: sum
    sql: ${red_cards} ;;
  }

  measure: average_vapm {
    label: "Average VAPM"
    description: "Value add per minutes ( (Points - 2) / Value )"
    type: average
    sql: ${vapm} ;;
    value_format_name: decimal_4
  }

  measure: total_saves {
    description: "How many saves the goalkeeper made"
    type: sum
    sql: ${saves} ;;
  }

  measure: total_bonus {
    description: "Not sure"
    type: sum
    sql: ${bonus} ;;
  }

  measure: total_bps {
    description: "Bonus points system"
    type: sum
    sql: ${bps} ;;
  }

  measure: total_threat {
    type: sum
    sql: ${threat} ;;
    value_format_name: decimal_2
  }

  measure: total_ict_index {
    label: "Total ICT Index"
    type: sum
    sql: ${ict_index} ;;
    value_format_name: decimal_2
  }

  measure: total_creativity {
    type: sum
    sql: ${creativity} ;;
    value_format_name: decimal_2
  }

  measure: total_influence {
    type: sum
    sql: ${influence} ;;
    value_format_name: decimal_2
  }

  measure: total_selected {
    group_label: "Selected"
    description: "How many times the player was selected"
    type: sum
    sql: ${selected} ;;
  }

  measure: total_transferred_in {
    group_label: "Selected"
    description: "How many times the player was transfered in"
    type: sum
    sql: ${transfers_in} ;;
  }

  measure: total_transferred_out {
    group_label: "Selected"
    description: "How many times the player was transferred off the team"
    type: sum
    sql: ${transfers_out} ;;
  }

  measure: total_fantasy_points {
    type: sum
    sql: ${total_points} ;;
    drill_fields: [players.name, players.team, total_assists, total_goals]
    link: {
      label: "Drill with Totals"
      url: "{{ link }}&total=on"
    }
  }


  measure: total_fantasy_points_against_top_6 {
    type: sum
    sql: ${total_points} ;;
    filters: {
      field: away_teams.away_name
      value: "Man City, Liverpool, Spurs, Chelsea, Man Utd, Arsenal"
  }
  }

  measure: games_played {
    type: count
    filters: {
      field: minutes
      value: ">0"
    }
  }

  measure: games_played_against_top_6 {
    type: count
    filters: {
      field: minutes
      value: ">0"
    }
    filters: {
      field: away_teams.away_name
      value: "Man City, Liverpool, Spurs, Chelsea, Man Utd, Arsenal"
    }
  }

  filter: player_name {
    suggest_dimension: players.name
  }

  dimension: filter {
    type: yesno
    sql: {% condition player_name %} ${players.name} {% endcondition %} ;;
  }

  measure: points_per_game {
    type: number
    sql: ${total_fantasy_points}/${games_played} ;;
  }

  measure: dynamic_total {
    type: sum
    sql: ${total_points} ;;
    filters: [filter: "yes"]
  }

  measure: dynamic_games_played {
    type: count
    filters: [filter: "yes", minutes: ">0"]
  }

  measure: dynamic_choice {
    type: number
    sql: ${dynamic_total}/${dynamic_games_played} ;;
  }

  measure: points_per_game_against_big_6 {
    type: number
    sql: ${total_fantasy_points_against_top_6}/${games_played_against_top_6} ;;
  }

  measure: current_game_week {
    type: max
    sql: ${round} ;;
  }

  measure: dynamic_selector1 {
    label: "{% if position_selector._parameter_value == 'FWD' %}
            Total Goals
          {% elsif position_selector._parameter_value == 'MID' %}
            Total Assists
          {% elsif position_selector._parameter_value == 'DEF' %}
            Total Clean Sheets
          {% elsif position_selector._parameter_value == 'GK' %}
            Total Clean Sheets
          {% else %}
            Total Fantasy Points
          {% endif %}"
    type: number
    sql: {% if position_selector._parameter_value == 'FWD' %}
          ${total_goals}
          {% elsif position_selector._parameter_value == 'MID' %}
            ${total_assists}
          {% elsif position_selector._parameter_value == 'DEF' %}
            ${total_clean_sheets}
          {% elsif position_selector._parameter_value == 'GK' %}
            ${total_clean_sheets}
          {% else %}
            ${total_fantasy_points}
          {% endif %};;
  }

  measure: dynamic_selector2 {
    label: "{% if position_selector._parameter_value == 'FWD' %}
    Total Assists
    {% elsif position_selector._parameter_value == 'MID' %}
    Total Goals
    {% elsif position_selector._parameter_value == 'DEF' %}
    Total Assists
    {% elsif position_selector._parameter_value == 'GK' %}
    Total Saves
    {% else %}
    Total Bonus
    {% endif %}"
    type: number
    sql: {% if position_selector._parameter_value == 'FWD' %}
          ${total_assists}
          {% elsif position_selector._parameter_value == 'MID' %}
            ${total_goals}
          {% elsif position_selector._parameter_value == 'DEF' %}
            ${total_assists}
          {% elsif position_selector._parameter_value == 'GK' %}
            ${total_saves}
          {% else %}
            ${total_bonus}
          {% endif %};;
  }

  ##################################
  #
  # Null fields
  #
  ##################################

  # dimension: attempted_passes {
  #   type: number
  #   sql: ${TABLE}.attempted_passes ;;
  # }

  # dimension: kickoff_time_formatted {
  #   type: string
  #   sql: ${TABLE}.kickoff_time_formatted ;;
  # }

  # dimension: loaned_in {
  #   type: number
  #   sql: ${TABLE}.loaned_in ;;
  # }

  # dimension: loaned_out {
  #   type: number
  #   sql: ${TABLE}.loaned_out ;;
  # }

  # dimension: dribbles {
  #   type: number
  #   sql: ${TABLE}.dribbles ;;
  # }

  # dimension: ea_index {
  #   type: number
  #   sql: ${TABLE}.ea_index ;;
  # }

  # dimension: offside {
  #   type: number
  #   sql: ${TABLE}.offside ;;
  # }

  # dimension: open_play_crosses {
  #   type: number
  #   sql: ${TABLE}.open_play_crosses ;;
  # }

  # dimension: big_chances_created {
  #   type: number
  #   sql: ${TABLE}.big_chances_created ;;
  # }

  # dimension: big_chances_missed {
  #   type: number
  #   sql: ${TABLE}.big_chances_missed ;;
  # }

  # dimension: clearances_blocks_interceptions {
  #   type: number
  #   sql: ${TABLE}.clearances_blocks_interceptions ;;
  # }

  # dimension: recoveries {
  #   type: number
  #   sql: ${TABLE}.recoveries ;;
  # }

  # dimension: tackled {
  #   type: number
  #   sql: ${TABLE}.tackled ;;
  # }

  # dimension: tackles {
  #   type: number
  #   sql: ${TABLE}.tackles ;;
  # }

  # dimension: winning_goals {
  #   type: number
  #   sql: ${TABLE}.winning_goals ;;
  # }

  # dimension: completed_passes {
  #   type: number
  #   sql: ${TABLE}.completed_passes ;;
  # }

  # dimension: penalties_conceded {
  #   type: number
  #   sql: ${TABLE}.penalties_conceded ;;
  # }

  # dimension: errors_leading_to_goal {
  #   type: number
  #   sql: ${TABLE}.errors_leading_to_goal ;;
  # }

  # dimension: errors_leading_to_goal_attempt {
  #   type: number
  #   sql: ${TABLE}.errors_leading_to_goal_attempt ;;
  # }

  # dimension: target_missed {
  #   type: number
  #   sql: ${TABLE}.target_missed ;;
  # }




}
