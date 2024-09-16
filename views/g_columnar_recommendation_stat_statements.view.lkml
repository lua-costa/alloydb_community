# The name of this view in Looker is "G Columnar Recommendation Stat Statements"
view: g_columnar_recommendation_stat_statements {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_recommendation_stat_statements ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Metric Name" in Explore.

  dimension: metric_name {
    type: string
    sql: ${TABLE}."metric_name" ;;
  }

  dimension: metric_type {
    type: string
    sql: ${TABLE}."metric_type" ;;
  }

  dimension: metric_value {
    type: number
    sql: ${TABLE}."metric_value" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_metric_value {
    type: sum
    sql: ${metric_value} ;;  }
  measure: average_metric_value {
    type: average
    sql: ${metric_value} ;;  }

  dimension: recommendation_algorithm {
    type: string
    sql: ${TABLE}."recommendation_algorithm" ;;
  }
  measure: count {
    type: count
    drill_fields: [metric_name]
  }
}
