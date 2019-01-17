view: products {
  derived_table: {
    sql: WITH unique_product_id as (
      SELECT product_id FROM brands.p_a_c
        GROUP BY product_id)

SELECT unique_product_id.product_id,
        p1.value as category,
        p2.value as brand,
        p3.value as department,
        p4.value as cost,
        p5.value as retail_cost,
        p6.value as distribution_center
      FROM unique_product_id
      JOIN brands.p_a_c p1 ON unique_product_id.product_id = p1.product_id
        AND p1.attribute_id = 1
      JOIN brands.p_a_c p2 ON unique_product_id.product_id = p2.product_id
        AND p2.attribute_id = 2
      JOIN brands.p_a_c p3 ON unique_product_id.product_id = p3.product_id
        AND p3.attribute_id = 3
      JOIN brands.p_a_n p4 ON unique_product_id.product_id = p4.product_id
        AND p4.attribute_id = 4
      JOIN brands.p_a_n p5 ON unique_product_id.product_id = p5.product_id
        AND p5.attribute_id = 5
      JOIN brands.p_a_n p6 ON unique_product_id.product_id = p6.product_id
        AND p6.attribute_id = 6
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: retail_cost {
    type: number
    sql: ${TABLE}.retail_cost ;;
  }

  dimension: distribution_center {
    type: number
    sql: ${TABLE}.distribution_center ;;
  }

  set: detail {
    fields: [
      product_id,
      category,
      brand,
      department,
      cost,
      retail_cost,
      distribution_center
    ]
  }
}
