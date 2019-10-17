view: players {
  sql_table_name: fpl.players ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assists {
    type: number
    sql: ${TABLE}.assists ;;
  }

  dimension: bps {
    type: number
    sql: ${TABLE}.bps ;;
  }

  dimension: clean_sheets {
    type: number
    sql: ${TABLE}.clean_sheets ;;
  }

  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: Position {
    type: string
    sql: CASE WHEN ${TABLE}.element_type = 1 THEN "GK"
              WHEN ${TABLE}.element_type = 2 THEN "DEF"
              WHEN ${TABLE}.element_type = 3 THEN "MID"
              WHEN ${TABLE}.element_type = 4 THEN "FWD" END ;;
  }

  dimension: event_points {
    type: number
    sql: ${TABLE}.event_points ;;
  }

  dimension: first_name {
    hidden: yes
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: goals_conceded {
    type: number
    sql: ${TABLE}.goals_conceded ;;
  }

  dimension: goals_scored {
    type: number
    sql: ${TABLE}.goals_scored ;;
  }

  dimension: minutes {
    type: number
    sql: ${TABLE}.minutes ;;
  }

  dimension: name {
    type: string
    sql: concat(${first_name}, " ", ${second_name}) ;;
    link: {
      label: "Player Dashboard"
      icon_url: "https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p{{code._value}}.png"
      url: "/dashboards/646?Player={{value}}"
    }
  }

  dimension: picture {
    type: number
    sql: ${code} ;;
    html: <img src="https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p{{value}}.png" height = 150 width = 150  /> ;;
  }

  dimension: now_cost {
    type: number
    sql: ${TABLE}.now_cost /10 ;;
    value_format: "\"£\"#.0\" K\""
  }

  dimension: points_per_game {
    type: number
    sql: ${TABLE}.points_per_game ;;
  }

  dimension: second_name {
    hidden: yes
    type: string
    sql: ${TABLE}.second_name ;;
  }

  dimension: selected_by_percent {
    type: number
    sql: ${TABLE}.selected_by_percent ;;
  }

  dimension: team {
    type: number
    sql: ${TABLE}.team ;;
  }

  dimension: total_points {
    type: number
    sql: ${TABLE}.total_points ;;
  }

  dimension: web_name {
    type: string
    sql: ${TABLE}.web_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, web_name, name]
  }

  ####################################
  #
  # Fields that are null
  #
  ####################################

  # dimension: photo {
  #   type: string
  #   sql: ${TABLE}.photo ;;
  # }

  # dimension: team_code {
  #   type: number
  #   sql: ${TABLE}.team_code ;;
  # }

  # dimension: status {
  #   type: string
  #   sql: ${TABLE}.status ;;
  # }

  # dimension: squad_number {
  #   type: number
  #   sql: ${TABLE}.squad_number ;;
  # }

  # dimension: news {
  #   type: string
  #   sql: ${TABLE}.news ;;
  # }

  # dimension: chance_of_playing_next_round {
  #   type: number
  #   sql: ${TABLE}.chance_of_playing_next_round ;;
  # }

  # dimension: chance_of_playing_this_round {
  #   type: number
  #   sql: ${TABLE}.chance_of_playing_this_round ;;
  # }

  # dimension: value_form {
  #   type: number
  #   sql: ${TABLE}.value_form ;;
  # }

  # dimension: value_season {
  #   type: number
  #   sql: ${TABLE}.value_season ;;
  # }

  # dimension: cost_change_event {
  #   type: number
  #   sql: ${TABLE}.cost_change_event ;;
  # }

  # dimension: cost_change_event_fall {
  #   type: number
  #   sql: ${TABLE}.cost_change_event_fall ;;
  # }

  # dimension: cost_change_start {
  #   type: number
  #   sql: ${TABLE}.cost_change_start ;;
  # }

  # dimension: cost_change_start_fall {
  #   type: number
  #   sql: ${TABLE}.cost_change_start_fall ;;
  # }

  # dimension: transfers_in {
  #   type: number
  #   sql: ${TABLE}.transfers_in ;;
  # }

  # dimension: transfers_in_event {
  #   type: number
  #   sql: ${TABLE}.transfers_in_event ;;
  # }

  # dimension: transfers_out {
  #   type: number
  #   sql: ${TABLE}.transfers_out ;;
  # }

  # dimension: transfers_out_event {
  #   type: number
  #   sql: ${TABLE}.transfers_out_event ;;
  # }

  # dimension: in_dreamteam {
  #   type: string
  #   sql: ${TABLE}.in_dreamteam ;;
  # }

  # dimension: dreamteam_count {
  #   type: number
  #   sql: ${TABLE}.dreamteam_count ;;
  # }

  # dimension: form {
  #   type: number
  #   sql: ${TABLE}.form ;;
  # }

  # dimension: loaned_in {
  #   type: number
  #   sql: ${TABLE}.loaned_in ;;
  # }

  # dimension: loaned_out {
  #   type: number
  #   sql: ${TABLE}.loaned_out ;;
  # }

  # dimension: loans_in {
  #   type: number
  #   sql: ${TABLE}.loans_in ;;
  # }

  # dimension: loans_out {
  #   type: number
  #   sql: ${TABLE}.loans_out ;;
  # }

  # dimension: ep_next {
  #   type: number
  #   sql: ${TABLE}.ep_next ;;
  # }

  # dimension: ep_this {
  #   type: number
  #   sql: ${TABLE}.ep_this ;;
  # }

  # dimension: special {
  #   type: string
  #   sql: ${TABLE}.special ;;
  # }

  # dimension: yellow_cards {
  #   type: number
  #   sql: ${TABLE}.yellow_cards ;;
  # }

  # dimension: red_cards {
  #   type: number
  #   sql: ${TABLE}.red_cards ;;
  # }

  # dimension: own_goals {
  #   type: number
  #   sql: ${TABLE}.own_goals ;;
  # }

  # dimension: penalties_missed {
  #   type: number
  #   sql: ${TABLE}.penalties_missed ;;
  # }

  # dimension: penalties_saved {
  #   type: number
  #   sql: ${TABLE}.penalties_saved ;;
  # }

  # dimension: saves {
  #   type: number
  #   sql: ${TABLE}.saves ;;
  # }

  # dimension: bonus {
  #   type: number
  #   sql: ${TABLE}.bonus ;;
  # }

  # dimension: creativity {
  #   type: number
  #   sql: ${TABLE}.creativity ;;
  # }

  # dimension: ea_index {
  #   type: number
  #   sql: ${TABLE}.ea_index ;;
  # }

  # dimension: ict_index {
  #   type: number
  #   sql: ${TABLE}.ict_index ;;
  # }

  # dimension: influence {
  #   type: number
  #   sql: ${TABLE}.influence ;;
  # }

  # dimension: threat {
  #   type: number
  #   sql: ${TABLE}.threat ;;
  # }

  # dimension: news_added {
  #   type: string
  #   sql: ${TABLE}.news_added ;;
  # }


}
