explore: teams {}
view: teams {
  sql_table_name: fpl.teams ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: draw {
    type: number
    sql: ${TABLE}.draw ;;
  }

  dimension: logo {
    type: string
    sql: ${name} ;;
    html: {% if value == "Arsenal" %}
          <img src="https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield.png" height="150" width="150">
          {% elsif value == "Aston Villa" %}
          <img src="http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4e4.png" height="150" width="150">
          {% elsif value == "Bournemouth" %}
          <img src="https://i2.wp.com/freepngimages.com/wp-content/uploads/2015/10/Bournemouth-football-club-logo.png?fit=241%2C316" height="150" width="150">
          {% elsif value == "Brighton" %}
          <img src="https://www.trzcacak.rs/myfile/full/36-361675_brighton-u23s-logo-brighton-and-hove-albion.png" height="150" width="150">
          {% elsif value == "Burnley" %}
          <img src="https://upload.wikimedia.org/wikipedia/sco/0/02/Burnley_FC_badge.png" height="150" width="150">
          {% elsif value == "Chelsea" %}
          <img src="https://www.stickpng.com/assets/images/580b57fcd9996e24bc43c4e1.png" height="150" width="150">
          {% elsif value == "Crystal Palace" %}
          <img src="https://upload.wikimedia.org/wikipedia/en/thumb/0/0c/Crystal_Palace_FC_logo.svg/1200px-Crystal_Palace_FC_logo.svg.png" height="150" width="150">
          {% elsif value == "Everton" %}
          <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/7c/Everton_FC_logo.svg/1200px-Everton_FC_logo.svg.png" height="150" width="150">
          {% elsif value == "Leicester" %}
          <img src="https://www.stickpng.com/assets/images/580b57fcd9996e24bc43c4e8.png" height="150" width="150">
          {% elsif value == "Liverpool" %}
          <img src="https://upload.wikimedia.org/wikipedia/hif/b/bd/Liverpool_FC.png" height="150" width="150">
          {% elsif value == "Man City" %}
          <img src="https://upload.wikimedia.org/wikipedia/en/thumb/e/eb/Manchester_City_FC_badge.svg/1200px-Manchester_City_FC_badge.svg.png" height="150" width="150">
          {% elsif value == "Man Utd" %}
          <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Manchester_United_FC_crest.svg/1200px-Manchester_United_FC_crest.svg.png" height="150" width="150">
          {% elsif value == "Newcastle" %}
          <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/56/Newcastle_United_Logo.svg/1200px-Newcastle_United_Logo.svg.png" height="150" width="150">
          {% elsif value == "Norwich" %}
          <img src="https://upload.wikimedia.org/wikipedia/en/8/8c/Norwich_City.svg" height="150" width="150">
          {% elsif value == "Sheffield Utd" %}
          <img src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9c/Sheffield_United_FC_logo.svg/1200px-Sheffield_United_FC_logo.svg.png" height="150" width="150">
          {% elsif value == "Southampton" %}
          <img src="https://upload.wikimedia.org/wikipedia/en/thumb/c/c9/FC_Southampton.svg/1200px-FC_Southampton.svg.png" height="150" width="150">
          {% elsif value == "Spurs" %}
          <img src="https://upload.wikimedia.org/wikipedia/en/thumb/b/b4/Tottenham_Hotspur.svg/1200px-Tottenham_Hotspur.svg.png" height="150" width="150">
          {% elsif value == "Watford" %}
          <img src="https://upload.wikimedia.org/wikipedia/en/thumb/e/e2/Watford.svg/1200px-Watford.svg.png" height="150" width="150">
          {% elsif value == "West Ham" %}
          <img src="https://cdn.freebiesupply.com/logos/large/2x/west-ham-united-fc-2-logo-png-transparent.png" height="150" width="150">
          {% elsif value == "Wolves" %}
          <img src="https://upload.wikimedia.org/wikipedia/en/thumb/f/fc/Wolverhampton_Wanderers.svg/1200px-Wolverhampton_Wanderers.svg.png" height="150" width="150">
          {% endif %} ;;
  }

  dimension: loss {
    type: number
    sql: ${TABLE}.loss ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: played {
    type: number
    sql: ${TABLE}.played ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}.points ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: short_name {
    type: string
    sql: ${TABLE}.short_name ;;
  }

  dimension: strength {
    type: number
    sql: ${TABLE}.strength ;;
  }

  dimension: strength_attack_away {
    type: number
    sql: ${TABLE}.strength_attack_away ;;
  }

  dimension: strength_attack_home {
    type: number
    sql: ${TABLE}.strength_attack_home ;;
  }

  dimension: strength_defence_away {
    type: number
    sql: ${TABLE}.strength_defence_away ;;
  }

  dimension: strength_defence_home {
    type: number
    sql: ${TABLE}.strength_defence_home ;;
  }

  dimension: strength_overall_away {
    type: number
    sql: ${TABLE}.strength_overall_away ;;
  }

  dimension: strength_overall_home {
    type: number
    sql: ${TABLE}.strength_overall_home ;;
  }

  dimension: win {
    type: number
    sql: ${TABLE}.win ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, short_name]
  }

  ####################################
  #
  # null fields
  #
  ####################################

  # dimension: unavailable {
  #   type: string
  #   sql: ${TABLE}.unavailable ;;
  # }

  # dimension: link_url {
  #   type: string
  #   sql: ${TABLE}.link_url ;;
  # }

  # dimension: team_division {
  #   type: number
  #   sql: ${TABLE}.team_division ;;
  # }



}
