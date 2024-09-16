# The name of this view in Looker is "G Columnar Recommended Columns"
view: g_columnar_recommended_columns {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_recommended_columns ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Column Name" in Explore.

  dimension: column_name {
    type: string
    sql: ${TABLE}."column_name" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."database_name" ;;
  }

  dimension: estimated_size_in_bytes {
    type: number
    sql: ${TABLE}."estimated_size_in_bytes" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_estimated_size_in_bytes {
    type: sum
    sql: ${estimated_size_in_bytes} ;;  }
  measure: average_estimated_size_in_bytes {
    type: average
    sql: ${estimated_size_in_bytes} ;;  }

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
    drill_fields: [schema_name, relation_name, column_name, database_name]
  }
}
