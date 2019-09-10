connection: "fntsypl"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


explore: players_detail {
  join: players {
    relationship: many_to_one
    type: left_outer
    sql_on: ${players.id} = ${players_detail.element} ;;
  }
  join: teams {
    relationship: many_to_one
    type: left_outer
    sql_on: ${players.team} = ${teams.id} ;;
  }
  join: understat_mapping {
    fields: []
    relationship: many_to_one
    type: left_outer
    sql_on: ${players.id} = ${understat_mapping.fpl_id} ;;
  }
  join: understat {
    relationship: many_to_one
    type: left_outer
    sql_on: ${understat.id} = ${understat_mapping.understat_id} ;;
  }
}
