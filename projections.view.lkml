view: projections {
  sql_table_name: fpl.projections ;;

  dimension: minutes {
    type: number
    sql: ${TABLE}.minutes ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: projection {
    type: number
    sql: ${TABLE}.projection ;;
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
    drill_fields: [web_name, name]
  }
}
