# The name of this view in Looker is "Google Db Advisor Agg Query Recommendations"
view: google_db_advisor_agg_query_recommendations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.google_db_advisor_agg_query_recommendations ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Database Name" in Explore.

  dimension: database_name {
    type: string
    sql: ${TABLE}."database_name" ;;
  }

  dimension: recommendations {
    type: string
    sql: ${TABLE}."recommendations" ;;
  }
  measure: count {
    type: count
    drill_fields: [database_name]
  }
}
