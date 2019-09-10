view: teamsheets {
  sql_table_name: fpl.teamsheets ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: fpl_position {
    type: number
    sql: ${TABLE}.fpl_position ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  dimension: team {
    type: string
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
    drill_fields: [id, web_name]
  }
}
