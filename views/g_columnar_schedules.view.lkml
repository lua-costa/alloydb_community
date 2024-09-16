# The name of this view in Looker is "G Columnar Schedules"
view: g_columnar_schedules {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_schedules ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: next {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."next_time" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Schedule" in Explore.

  dimension: schedule {
    type: string
    sql: ${TABLE}."schedule" ;;
  }

  dimension: schedule_name {
    type: string
    sql: ${TABLE}."schedule_name" ;;
  }
  measure: count {
    type: count
    drill_fields: [schedule_name]
  }
}
