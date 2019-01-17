view: order_items {
  sql_table_name: brands.order_items ;;
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  filter: week_to_date {
    type: date

  }
  dimension_group: created_at {
    type: time
    timeframes: [
      raw,
      date,
      hour_of_day,
      week,
      month,
      week_of_year,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.created_at ;;
    datatype: epoch
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }
  measure: sale_price {
    type: sum
    sql: ${TABLE}.sale_price ;;
  }
  dimension_group: shipped_at {
    type: time
    timeframes: [
      raw,
      date,
      hour_of_day,
      week,
      week_of_year,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.shipped_at ;;
    datatype: epoch
  }
  dimension: time_to_ship {
    type: number
    sql:${shipped_at_date}- ${created_at_date}  ;;
  }
  dimension: is_late {
    type: yesno
    sql: ${time_to_ship} > 3  ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: year_to_date {
    type: yesno
    sql: DATE_PART('week' , ${created_at_date}) >= DATE_PART('week' , {% date_start week_to_date %}) AND DATE_PART('week' , ${created_at_date}) < DATE_PART('week' , {% date_end week_to_date %}) ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
  measure: count_late_orders {
    type: count
    filters: {
      field: is_late
      value: "yes"
    }
  }
  measure: percent_late_orders {
    type: string
    sql:  ${count_late_orders}/${count} || '%' ;;
  }
}
