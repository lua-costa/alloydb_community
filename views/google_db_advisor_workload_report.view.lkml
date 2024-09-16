# The name of this view in Looker is "Google Db Advisor Workload Report"
view: google_db_advisor_workload_report {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.google_db_advisor_workload_report ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Db ID" in Explore.

  dimension: db_id {
    type: string
    sql: ${TABLE}."db_id" ;;
  }

  dimension: init_cost {
    type: number
    sql: ${TABLE}."init_cost" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_init_cost {
    type: sum
    sql: ${init_cost} ;;  }
  measure: average_init_cost {
    type: average
    sql: ${init_cost} ;;  }

  dimension: new_cost {
    type: number
    sql: ${TABLE}."new_cost" ;;
  }

  dimension: num_calls {
    type: number
    sql: ${TABLE}."num_calls" ;;
  }

  dimension: query_id {
    type: number
    sql: ${TABLE}."query_id" ;;
  }

  dimension: recommended_indexes {
    type: string
    sql: ${TABLE}."recommended_indexes" ;;
  }

  dimension: total_time {
    type: number
    sql: ${TABLE}."total_time" ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}."user_id" ;;
  }
  measure: count {
    type: count
  }
}
