# The name of this view in Looker is "G Columnar Column Set Stat Statements"
view: g_columnar_column_set_stat_statements {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_column_set_stat_statements ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Benefit" in Explore.

  dimension: benefit {
    type: number
    sql: ${TABLE}."benefit" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_benefit {
    type: sum
    sql: ${benefit} ;;  }
  measure: average_benefit {
    type: average
    sql: ${benefit} ;;  }

  dimension: column_names {
    type: string
    sql: ${TABLE}."column_names" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."database_name" ;;
  }

  dimension: force {
    type: yesno
    sql: ${TABLE}."force" ;;
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
    drill_fields: [relation_name, database_name, schema_name]
  }
}
