view: entry_picks {
  sql_table_name: fpl.entry_picks ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: element {
    type: number
    sql: ${TABLE}.element ;;
  }

  dimension: entry {
    type: number
    sql: ${TABLE}.entry ;;
  }

  dimension: is_captain {
    type: number
    sql: ${TABLE}.is_captain ;;
  }

  dimension: is_vice_captain {
    type: number
    sql: ${TABLE}.is_vice_captain ;;
  }

  dimension: multiplier {
    type: number
    sql: ${TABLE}.multiplier ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: round {
    type: number
    sql: ${TABLE}.round ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
