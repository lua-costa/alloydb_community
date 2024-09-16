# The name of this view in Looker is "Google Db Advisor Stats"
view: google_db_advisor_stats {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.google_db_advisor_stats ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Value" in Explore.

  dimension: value {
    type: string
    sql: ${TABLE}."value" ;;
  }
  measure: count {
    type: count
  }
}
