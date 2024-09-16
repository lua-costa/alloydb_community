# The name of this view in Looker is "G Columnar Whatif Relations"
view: g_columnar_whatif_relations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_whatif_relations ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Block Count In Cc" in Explore.

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

  dimension: num_blocks_used_for_size_estimation {
    type: number
    sql: ${TABLE}."num_blocks_used_for_size_estimation" ;;
  }

  dimension: num_changed_blocks_since_last_size_estimation {
    type: number
    sql: ${TABLE}."num_changed_blocks_since_last_size_estimation" ;;
  }

  dimension: queued_refresh_duration_in_seconds {
    type: number
    sql: ${TABLE}."queued_refresh_duration_in_seconds" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_queued_refresh_duration_in_seconds {
    type: sum
    sql: ${queued_refresh_duration_in_seconds} ;;  }
  measure: average_queued_refresh_duration_in_seconds {
    type: average
    sql: ${queued_refresh_duration_in_seconds} ;;  }

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

  dimension: total_block_count {
    type: number
    sql: ${TABLE}."total_block_count" ;;
  }

  dimension: valid_block_count {
    type: number
    sql: ${TABLE}."valid_block_count" ;;
  }

  dimension: valid_tuple_count {
    type: number
    sql: ${TABLE}."valid_tuple_count" ;;
  }
  measure: count {
    type: count
    drill_fields: [relation_name, database_name, schema_name]
  }
}
