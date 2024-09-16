# The name of this view in Looker is "G Columnar Memory Usage"
view: g_columnar_memory_usage {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_memory_usage ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Memory Available" in Explore.

  dimension: memory_available {
    type: number
    sql: ${TABLE}."memory_available" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_memory_available {
    type: sum
    sql: ${memory_available} ;;  }
  measure: average_memory_available {
    type: average
    sql: ${memory_available} ;;  }

  dimension: memory_available_percentage {
    type: number
    sql: ${TABLE}."memory_available_percentage" ;;
  }

  dimension: memory_name {
    type: string
    sql: ${TABLE}."memory_name" ;;
  }

  dimension: memory_total {
    type: number
    sql: ${TABLE}."memory_total" ;;
  }

  dimension: reserved_memory {
    type: number
    sql: ${TABLE}."reserved_memory" ;;
  }
  measure: count {
    type: count
    drill_fields: [memory_name]
  }
}
