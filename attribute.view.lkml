view: attribute {
  sql_table_name: brands.attribute ;;

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: attribute {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, attribute, p_a_c.count, p_a_n.count]
  }
}
