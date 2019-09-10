view: understat_mapping {
  sql_table_name: fpl.understat_mapping ;;

  dimension: fpl_id {
    type: number
    sql: ${TABLE}.fpl_id ;;
  }

  dimension: understat_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.understat_id ;;
  }

  measure: count {
    type: count
    drill_fields: [understat.id, understat.player_name]
  }
}
