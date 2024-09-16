# The name of this view in Looker is "Google Db Advisor Index State"
view: google_db_advisor_index_state {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.google_db_advisor_index_state ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Index" in Explore.

  dimension: index {
    type: string
    sql: ${TABLE}."index" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }
  measure: count {
    type: count
  }
}
