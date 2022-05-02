view: planet {
  sql_table_name: `test_looker.planet`
    ;;

  dimension: all_tags {
    label: "테스트"
    hidden: yes
    sql: ${TABLE}.all_tags ;;
  }

  dimension: feature_type {
    type: string
    sql: ${TABLE}.feature_type ;;
  }

  dimension: geometry {
    type: string
    sql: ${TABLE}.geometry ;;
  }

  dimension: osm_id {
    type: number
    sql: ${TABLE}.osm_id ;;
  }

  dimension_group: osm_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.osm_timestamp ;;
  }

  dimension: osm_version {
    type: number
    sql: ${TABLE}.osm_version ;;
  }

  dimension: osm_way_id {
    type: number
    sql: ${TABLE}.osm_way_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: planet__all_tags {
  dimension: key {
    type: string
    sql: key ;;
  }

  dimension: planet__all_tags {
    type: string
    hidden: yes
    sql: planet__all_tags ;;
  }

  dimension: value {
    type: string
    sql: value ;;
  }
}
