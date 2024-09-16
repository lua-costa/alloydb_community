# The name of this view in Looker is "G Columnar Units"
view: g_columnar_units {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_units ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cached Size Bytes" in Explore.

  dimension: cached_size_bytes {
    type: number
    sql: ${TABLE}."cached_size_bytes" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cached_size_bytes {
    type: sum
    sql: ${cached_size_bytes} ;;  }
  measure: average_cached_size_bytes {
    type: average
    sql: ${cached_size_bytes} ;;  }

  dimension: columns_count {
    type: number
    sql: ${TABLE}."columns_count" ;;
  }

  dimension: columns_swap_status {
    type: string
    sql: ${TABLE}."columns_swap_status" ;;
  }

  dimension: cu_xid {
    type: number
    value_format_name: id
    sql: ${TABLE}."cu_xid" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."database_name" ;;
  }

  dimension: end_block {
    type: number
    sql: ${TABLE}."end_block" ;;
  }

  dimension: invalid_block_count {
    type: number
    sql: ${TABLE}."invalid_block_count" ;;
  }

  dimension: is_full_cu {
    type: yesno
    sql: ${TABLE}."is_full_cu" ;;
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

  dimension: start_block {
    type: number
    sql: ${TABLE}."start_block" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: swap_out_size_bytes {
    type: number
    sql: ${TABLE}."swap_out_size_bytes" ;;
  }

  dimension: swap_status {
    type: string
    sql: ${TABLE}."swap_status" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: utilization {
    type: number
    sql: ${TABLE}."utilization" ;;
  }
  measure: count {
    type: count
    drill_fields: [relation_name, schema_name, database_name]
  }
}
