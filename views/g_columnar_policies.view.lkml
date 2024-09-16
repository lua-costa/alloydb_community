# The name of this view in Looker is "G Columnar Policies"
view: g_columnar_policies {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_policies ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Database Name" in Explore.

  dimension: database_name {
    type: string
    sql: ${TABLE}."database_name" ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}."duration" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_duration {
    type: sum
    sql: ${duration} ;;  }
  measure: average_duration {
    type: average
    sql: ${duration} ;;  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: next {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."next_time" ;;
  }

  dimension: policy_category {
    type: string
    sql: ${TABLE}."policy_category" ;;
  }

  dimension: policy_id {
    type: number
    sql: ${TABLE}."policy_id" ;;
  }

  dimension: policy_interval {
    type: string
    sql: ${TABLE}."policy_interval" ;;
  }

  dimension: policy_object {
    type: string
    sql: ${TABLE}."policy_object" ;;
  }

  dimension: relation_name {
    type: string
    sql: ${TABLE}."relation_name" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."schema_name" ;;
  }

  dimension: time_unit {
    type: string
    sql: ${TABLE}."time_unit" ;;
  }
  measure: count {
    type: count
    drill_fields: [database_name, relation_name, schema_name]
  }
}
