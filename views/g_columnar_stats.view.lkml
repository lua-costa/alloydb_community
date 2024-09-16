# The name of this view in Looker is "G Columnar Stats"
view: g_columnar_stats {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_stats ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Count G Columnar Stats" in Explore.

  dimension: count_g_columnar_stats {
    type: number
    sql: ${TABLE}."count" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_count_g_columnar_stats {
    type: sum
    sql: ${count_g_columnar_stats} ;;  }
  measure: average_count_g_columnar_stats {
    type: average
    sql: ${count_g_columnar_stats} ;;  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
