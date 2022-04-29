connection: "cloocus_test"

# include all the views
include: "/views/**/*.view"

datagroup: cloocus_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cloocus_project_default_datagroup

explore: planet {
  join: planet__all_tags {
    view_label: "Planet: All Tags"
    sql: LEFT JOIN UNNEST(${planet.all_tags}) as planet__all_tags ;;
    relationship: one_to_many
  }
}
