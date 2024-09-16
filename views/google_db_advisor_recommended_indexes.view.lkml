# The name of this view in Looker is "Google Db Advisor Recommended Indexes"
view: google_db_advisor_recommended_indexes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.google_db_advisor_recommended_indexes ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Estimated Storage Size In Mb" in Explore.

  dimension: estimated_storage_size_in_mb {
    type: number
    sql: ${TABLE}."estimated_storage_size_in_mb" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_estimated_storage_size_in_mb {
    type: sum
    sql: ${estimated_storage_size_in_mb} ;;  }
  measure: average_estimated_storage_size_in_mb {
    type: average
    sql: ${estimated_storage_size_in_mb} ;;  }

  dimension: index {
    type: string
    sql: ${TABLE}."index" ;;
  }

  dimension: num_impacted_queries {
    type: number
    sql: ${TABLE}."num_impacted_queries" ;;
  }
  measure: count {
    type: count
  }
}
