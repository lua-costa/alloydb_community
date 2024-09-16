# The name of this view in Looker is "G Columnar Agg Stat Statements"
view: g_columnar_agg_stat_statements {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_agg_stat_statements ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Metrics" in Explore.

  dimension: metrics {
    type: string
    sql: ${TABLE}."metrics" ;;
  }
  measure: count {
    type: count
  }
}
