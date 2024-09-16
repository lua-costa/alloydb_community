# The name of this view in Looker is "Google Db Advisor Query Tuning Advices"
view: google_db_advisor_query_tuning_advices {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.google_db_advisor_query_tuning_advices ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Advice" in Explore.

  dimension: advice {
    type: string
    sql: ${TABLE}."advice" ;;
  }

  dimension: db_id {
    type: string
    sql: ${TABLE}."db_id" ;;
  }

  dimension: parent_span_id {
    type: string
    sql: ${TABLE}."parent_span_id" ;;
  }

  dimension: query_id {
    type: number
    sql: ${TABLE}."query_id" ;;
  }

  dimension: span_id {
    type: string
    sql: ${TABLE}."span_id" ;;
  }

  dimension: trace_id {
    type: string
    sql: ${TABLE}."trace_id" ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}."user_id" ;;
  }
  measure: count {
    type: count
  }
}
