view: fixtures {
  sql_table_name: fpl.fixtures ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: deadline_time {
    type: string
    sql: ${TABLE}.deadline_time ;;
  }

  dimension: deadline_time_formatted {
    type: string
    sql: ${TABLE}.deadline_time_formatted ;;
  }

  dimension: event {
    type: number
    sql: ${TABLE}.event ;;
  }

  dimension: event_day {
    type: number
    sql: ${TABLE}.event_day ;;
  }

  dimension: finished {
    type: number
    sql: ${TABLE}.finished ;;
  }

  dimension: finished_provisional {
    type: number
    sql: ${TABLE}.finished_provisional ;;
  }

  dimension: kickoff_time {
    type: string
    sql: ${TABLE}.kickoff_time ;;
  }

  dimension: kickoff_time_formatted {
    type: string
    sql: ${TABLE}.kickoff_time_formatted ;;
  }

  dimension: minutes {
    type: number
    sql: ${TABLE}.minutes ;;
  }

  dimension: provisional_start_time {
    type: number
    sql: ${TABLE}.provisional_start_time ;;
  }

  dimension: started {
    type: number
    sql: ${TABLE}.started ;;
  }

  dimension: team_a {
    type: number
    sql: ${TABLE}.team_a ;;
  }

  dimension: team_a_difficulty {
    type: number
    sql: ${TABLE}.team_a_difficulty ;;
  }

  dimension: team_a_score {
    type: number
    sql: ${TABLE}.team_a_score ;;
  }

  dimension: team_h {
    type: number
    sql: ${TABLE}.team_h ;;
  }

  dimension: team_h_difficulty {
    type: number
    sql: ${TABLE}.team_h_difficulty ;;
  }

  dimension: team_h_score {
    type: number
    sql: ${TABLE}.team_h_score ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
