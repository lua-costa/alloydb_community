# The name of this view in Looker is "G Columnar Wait Events"
view: g_columnar_wait_events {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_wait_events ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Avg Wait" in Explore.

  dimension: avg_wait {
    type: number
    sql: ${TABLE}."avg_wait" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_wait {
    type: sum
    sql: ${avg_wait} ;;  }
  measure: average_avg_wait {
    type: average
    sql: ${avg_wait} ;;  }

  dimension: elapsed_time {
    type: number
    sql: ${TABLE}."elapsed_time" ;;
  }

  dimension: num_waits {
    type: number
    sql: ${TABLE}."num_waits" ;;
  }

  dimension: wait_name {
    type: string
    sql: ${TABLE}."wait_name" ;;
  }
  measure: count {
    type: count
    drill_fields: [wait_name]
  }
}
