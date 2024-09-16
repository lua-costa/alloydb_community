# The name of this view in Looker is "G Columnar Stat Statements"
view: g_columnar_stat_statements {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_stat_statements ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Columnar Scan Time" in Explore.

  dimension: columnar_scan_time {
    type: number
    sql: ${TABLE}."columnar_scan_time" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_columnar_scan_time {
    type: sum
    sql: ${columnar_scan_time} ;;  }
  measure: average_columnar_scan_time {
    type: average
    sql: ${columnar_scan_time} ;;  }

  dimension: columnar_unit_read {
    type: number
    sql: ${TABLE}."columnar_unit_read" ;;
  }

  dimension: db_id {
    type: string
    sql: ${TABLE}."db_id" ;;
  }

  dimension: page_read {
    type: number
    sql: ${TABLE}."page_read" ;;
  }

  dimension: query_id {
    type: number
    sql: ${TABLE}."query_id" ;;
  }

  dimension: rows_filtered {
    type: number
    sql: ${TABLE}."rows_filtered" ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}."user_id" ;;
  }

  dimension: vectorized_aggregation_time {
    type: number
    sql: ${TABLE}."vectorized_aggregation_time" ;;
  }

  dimension: vectorized_aggregation_vj_time {
    type: number
    sql: ${TABLE}."vectorized_aggregation_vj_time" ;;
  }

  dimension: vectorized_join_time {
    type: number
    sql: ${TABLE}."vectorized_join_time" ;;
  }
  measure: count {
    type: count
  }
}
