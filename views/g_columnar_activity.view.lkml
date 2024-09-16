# The name of this view in Looker is "G Columnar Activity"
view: g_columnar_activity {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_activity ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Column Name" in Explore.

  dimension: column_name {
    type: string
    sql: ${TABLE}."column_name" ;;
  }

  dimension: cu_start_bno {
    type: number
    sql: ${TABLE}."cu_start_bno" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cu_start_bno {
    type: sum
    sql: ${cu_start_bno} ;;  }
  measure: average_cu_start_bno {
    type: average
    sql: ${cu_start_bno} ;;  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."database_name" ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}."event" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: event {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."event_time" ;;
  }

  dimension: relation_name {
    type: string
    sql: ${TABLE}."relation_name" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."schema_name" ;;
  }
  measure: count {
    type: count
    drill_fields: [schema_name, database_name, relation_name, column_name]
  }
}
