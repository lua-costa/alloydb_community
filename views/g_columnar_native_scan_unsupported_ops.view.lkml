# The name of this view in Looker is "G Columnar Native Scan Unsupported Ops"
view: g_columnar_native_scan_unsupported_ops {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_native_scan_unsupported_ops ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Unsupported Op Name" in Explore.

  dimension: unsupported_op_name {
    type: string
    sql: ${TABLE}."unsupported_op_name" ;;
  }
  measure: count {
    type: count
    drill_fields: [unsupported_op_name]
  }
}
