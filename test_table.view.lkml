view: test_table {
  sql_table_name: `i-love-basketball.nba.test_table`
    ;;

  dimension: assists {
    type: number
    sql: ${TABLE}.assists ;;
  }

  dimension: attempted_field_goals {
    type: number
    sql: ${TABLE}.attempted_field_goals ;;
  }

  dimension: attempted_free_throws {
    type: number
    sql: ${TABLE}.attempted_free_throws ;;
  }

  dimension: attempted_three_point_field_goals {
    type: number
    sql: ${TABLE}.attempted_three_point_field_goals ;;
  }

  dimension: blocks {
    type: number
    sql: ${TABLE}.blocks ;;
  }

  dimension: defensive_rebounds {
    type: number
    sql: ${TABLE}.defensive_rebounds ;;
  }

  dimension: game_score {
    type: number
    sql: ${TABLE}.game_score ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: made_field_goals {
    type: number
    sql: ${TABLE}.made_field_goals ;;
  }

  dimension: made_free_throws {
    type: number
    sql: ${TABLE}.made_free_throws ;;
  }

  dimension: made_three_point_field_goals {
    type: number
    sql: ${TABLE}.made_three_point_field_goals ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: offensive_rebounds {
    type: number
    sql: ${TABLE}.offensive_rebounds ;;
  }

  dimension: opponent {
    type: string
    sql: ${TABLE}.opponent ;;
  }

  dimension: outcome {
    type: string
    sql: ${TABLE}.outcome ;;
  }

  dimension: personal_fouls {
    type: number
    sql: ${TABLE}.personal_fouls ;;
  }

  dimension: seconds_played {
    type: number
    sql: ${TABLE}.seconds_played ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: steals {
    type: number
    sql: ${TABLE}.steals ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.team ;;
  }

  dimension: turnovers {
    type: number
    sql: ${TABLE}.turnovers ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
