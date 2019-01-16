connection: "shirts_shirts_pants"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: attribute {
  always_filter: {
    filters: {
      field: attribute
      value: ""
    }
  }
  join: p_a_c {
    view_label: "Attribute"
    type: left_outer
    relationship: many_to_one
    sql_on: ${p_a_c.attribute_id} = ${attribute.id} ;;
  }
}
