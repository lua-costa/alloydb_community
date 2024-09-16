# The name of this view in Looker is "Pgbench History"
view: pgbench_history {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.pgbench_history ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aid" in Explore.

  dimension: aid {
    type: number
    value_format_name: id
    sql: ${TABLE}."aid" ;;
  }

  dimension: bid {
    type: number
    value_format_name: id
    sql: ${TABLE}."bid" ;;
  }

  dimension: delta {
    type: number
    sql: ${TABLE}."delta" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_delta {
    type: sum
    sql: ${delta} ;;  }
  measure: average_delta {
    type: average
    sql: ${delta} ;;  }

  dimension: filler {
    type: string
    sql: ${TABLE}."filler" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: mtime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."mtime" ;;
  }

  dimension: tid {
    type: number
    value_format_name: id
    sql: ${TABLE}."tid" ;;
  }
  measure: count {
    type: count
  }
}
