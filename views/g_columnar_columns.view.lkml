# The name of this view in Looker is "G Columnar Columns"
view: g_columnar_columns {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_columns ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Column Name" in Explore.

  dimension: column_name {
    type: string
    sql: ${TABLE}."column_name" ;;
  }

  dimension: column_type {
    type: string
    sql: ${TABLE}."column_type" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."database_name" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_accessed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."last_accessed_time" ;;
  }

  dimension: num_times_accessed {
    type: number
    sql: ${TABLE}."num_times_accessed" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_num_times_accessed {
    type: sum
    sql: ${num_times_accessed} ;;  }
  measure: average_num_times_accessed {
    type: average
    sql: ${num_times_accessed} ;;  }

  dimension: relation_name {
    type: string
    sql: ${TABLE}."relation_name" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."schema_name" ;;
  }

  dimension: size_in_bytes {
    type: number
    sql: ${TABLE}."size_in_bytes" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }
  measure: count {
    type: count
    drill_fields: [schema_name, database_name, column_name, relation_name]
  }
}
