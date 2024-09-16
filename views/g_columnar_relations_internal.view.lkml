# The name of this view in Looker is "G Columnar Relations Internal"
view: g_columnar_relations_internal {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_relations_internal ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: auto_refresh_end_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."auto_refresh_end_timestamp" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Auto Refresh Failure Count" in Explore.

  dimension: auto_refresh_failure_count {
    type: number
    sql: ${TABLE}."auto_refresh_failure_count" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_auto_refresh_failure_count {
    type: sum
    sql: ${auto_refresh_failure_count} ;;  }
  measure: average_auto_refresh_failure_count {
    type: average
    sql: ${auto_refresh_failure_count} ;;  }

  dimension: auto_refresh_recent_status {
    type: string
    sql: ${TABLE}."auto_refresh_recent_status" ;;
  }

  dimension_group: auto_refresh_start_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."auto_refresh_start_timestamp" ;;
  }

  dimension: auto_refresh_trigger_count {
    type: number
    sql: ${TABLE}."auto_refresh_trigger_count" ;;
  }

  dimension_group: auto_refresh_trigger_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."auto_refresh_trigger_timestamp" ;;
  }

  dimension: block_count_in_cc {
    type: number
    sql: ${TABLE}."block_count_in_cc" ;;
  }

  dimension: columnar_unit_count {
    type: number
    sql: ${TABLE}."columnar_unit_count" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."database_name" ;;
  }

  dimension: invalid_block_count {
    type: number
    sql: ${TABLE}."invalid_block_count" ;;
  }

  dimension: relation_name {
    type: string
    sql: ${TABLE}."relation_name" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."schema_name" ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}."size" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: total_block_count {
    type: number
    sql: ${TABLE}."total_block_count" ;;
  }

  dimension: uncompressed_size {
    type: number
    sql: ${TABLE}."uncompressed_size" ;;
  }
  measure: count {
    type: count
    drill_fields: [schema_name, database_name, relation_name]
  }
}
