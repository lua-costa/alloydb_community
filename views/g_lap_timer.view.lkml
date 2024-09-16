# The name of this view in Looker is "G Lap Timer"
view: g_lap_timer {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_lap_timer ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: lap {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."lap_time" ;;
  }
  measure: count {
    type: count
  }
}
