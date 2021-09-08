connection: "fntsypl"

include: "*.view.lkml"
# include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


explore: players_detail {
  join: players {
    relationship: many_to_one
    type: left_outer
    sql_on: ${players.id} = ${players_detail.element} ;;
  }
  query: test {
    dimensions: [players.name]
    measures: [players.total_points]
  }
  join: teams {
    relationship: many_to_one
    type: left_outer
    sql_on: ${players.team} = ${teams.id} ;;
  }
  join: away_teams {
    view_label: "Teams"
    fields: [away_teams.away_name]
    relationship: many_to_one
    type: left_outer
    sql_on: ${players_detail.opponent_team} = ${away_teams.id} ;;
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

  join: parameter_player {
    type: left_outer
    relationship: one_to_one
    sql_on: ${players.name} = ${parameter_player.name} ;;
  }

  query: top_scorers {
    dimensions: [players.name]
    measures: [total_fantasy_points]
  }

  query: total_points {
    dimensions: [round]
    measures: [total_fantasy_points]
    filters: [players.name: "Michail Antonio"]
  }
}

explore: players {}

explore: fixtures {}

explore: fixture_table {}

explore: teams {}
