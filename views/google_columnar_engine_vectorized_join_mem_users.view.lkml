# The name of this view in Looker is "Google Columnar Engine Vectorized Join Mem Users"
view: google_columnar_engine_vectorized_join_mem_users {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.google_columnar_engine_vectorized_join_mem_users ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Memory Context Name" in Explore.

  dimension: memory_context_name {
    type: string
    sql: ${TABLE}."memory_context_name" ;;
  }

  dimension: uncompressed_size {
    type: number
    sql: ${TABLE}."uncompressed_size" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_uncompressed_size {
    type: sum
    sql: ${uncompressed_size} ;;  }
  measure: average_uncompressed_size {
    type: average
    sql: ${uncompressed_size} ;;  }
  measure: count {
    type: count
    drill_fields: [memory_context_name]
  }
}
