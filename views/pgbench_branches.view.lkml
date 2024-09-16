# The name of this view in Looker is "Pgbench Branches"
view: pgbench_branches {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.pgbench_branches ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bbalance" in Explore.

  dimension: bbalance {
    type: number
    sql: ${TABLE}."bbalance" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bbalance {
    type: sum
    sql: ${bbalance} ;;  }
  measure: average_bbalance {
    type: average
    sql: ${bbalance} ;;  }

  dimension: bid {
    type: number
    value_format_name: id
    sql: ${TABLE}."bid" ;;
  }

  dimension: filler {
    type: string
    sql: ${TABLE}."filler" ;;
  }
  measure: count {
    type: count
  }
}
