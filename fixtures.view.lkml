
view: fixtures {
  sql_table_name: fpl.fixtures ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: kickoff_time_formatted {
    type: string
    sql: ${TABLE}.kickoff_time_formatted ;;
  }

  dimension: started {
    type: number
    sql: ${TABLE}.started ;;
  }

  dimension: event_day {
    type: number
    sql: ${TABLE}.event_day ;;
  }

  dimension: deadline_time {
    type: string
    sql: ${TABLE}.deadline_time ;;
  }

  dimension: deadline_time_formatted {
    type: string
    sql: ${TABLE}.deadline_time_formatted ;;
  }

  dimension: team_h_difficulty {
    type: number
    sql: ${TABLE}.team_h_difficulty ;;
  }

  dimension: team_a_difficulty {
    type: number
    sql: ${TABLE}.team_a_difficulty ;;
  }

  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: kickoff_time {
    type: string
    sql: ${TABLE}.kickoff_time ;;
  }

  dimension: team_h_score {
    type: number
    sql: ${TABLE}.team_h_score ;;
  }

  dimension: team_a_score {
    type: number
    sql: ${TABLE}.team_a_score ;;
  }

  dimension: finished {
    type: number
    sql: ${TABLE}.finished ;;
  }

  dimension: minutes {
    type: number
    sql: ${TABLE}.minutes ;;
  }

  dimension: provisional_start_time {
    type: number
    sql: ${TABLE}.provisional_start_time ;;
  }

  dimension: finished_provisional {
    type: number
    sql: ${TABLE}.finished_provisional ;;
  }

  dimension: event {
    type: number
    sql: ${TABLE}.event ;;
  }

  dimension: team_a {
    type: number
    sql: ${TABLE}.team_a ;;
  }

  dimension: team_h {
    type: number
    sql: ${TABLE}.team_h ;;
  }

  set: detail {
    fields: [
      id,
      kickoff_time_formatted,
      started,
      event_day,
      deadline_time,
      deadline_time_formatted,
      team_h_difficulty,
      team_a_difficulty,
      code,
      kickoff_time,
      team_h_score,
      team_a_score,
      finished,
      minutes,
      provisional_start_time,
      finished_provisional,
      event,
      team_a,
      team_h
    ]
  }
}
