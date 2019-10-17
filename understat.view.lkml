view: understat {
  sql_table_name: fpl.understat ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assists {
    type: number
    sql: ${TABLE}.assists ;;
  }

  dimension: games {
    type: number
    sql: ${TABLE}.games ;;
  }

  dimension: goals {
    type: number
    sql: ${TABLE}.goals ;;
  }

  dimension: key_passes {
    type: number
    sql: ${TABLE}.key_passes ;;
  }

  dimension: npg {
    type: number
    sql: ${TABLE}.npg ;;
  }

  dimension: npx_g {
    type: number
    sql: ${TABLE}.npxG ;;
  }

  dimension: player_name {
    type: string
    sql: ${TABLE}.player_name ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  dimension: red_cards {
    type: number
    sql: ${TABLE}.red_cards ;;
  }

  dimension: shots {
    type: number
    sql: ${TABLE}.shots ;;
  }

  dimension: team_title {
    type: string
    sql: ${TABLE}.team_title ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }

  dimension: x_a {
    type: number
    sql: ${TABLE}.xA ;;
  }

  dimension: x_g {
    type: number
    sql: ${TABLE}.xG ;;
  }

  dimension: x_gbuildup {
    type: number
    sql: ${TABLE}.xGBuildup ;;
  }

  dimension: x_gchain {
    type: number
    sql: ${TABLE}.xGChain ;;
  }

  dimension: yellow_cards {
    type: number
    sql: ${TABLE}.yellow_cards ;;
  }

  measure: count {
    type: count
    drill_fields: [id, player_name, understat_mapping.count]
  }

  measure: xg {
    label: "xG"
    description: "Expected Goals"
    type: max
    sql: ${x_g} ;;
    value_format_name: decimal_2
  }

  measure: xa {
    label: "xA"
    description: "Expected Assists"
    type: max
    sql: ${x_a} ;;
    value_format_name: decimal_2
  }

  measure: np_g {
    label: "npG"
    description: "Non Penalty Goals"
    type: max
    sql: ${npg} ;;
    value_format_name: decimal_0
  }

  measure: np_xg {
    label: "np xG"
    description: "Non Penalty Expected Goals"
    type: max
    sql: ${npx_g} ;;
    value_format_name: decimal_2
  }

  measure: xgbuild {
    label: "xG Buildup"
    description: "Expected Goals from involvement in buildup"
    type: max
    sql: ${x_gbuildup} ;;
    value_format_name: decimal_2
  }

  measure: xgchain {
    label: "xG Chain"
    description: "I think this is a expected hockey assists"
    type: max
    sql: ${x_gchain} ;;
    value_format_name: decimal_2
  }


}
