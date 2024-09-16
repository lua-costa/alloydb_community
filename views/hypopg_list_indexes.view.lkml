# The name of this view in Looker is "Hypopg List Indexes"
view: hypopg_list_indexes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.hypopg_list_indexes ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Am Name" in Explore.

  dimension: am_name {
    type: string
    sql: ${TABLE}."am_name" ;;
  }

  dimension: index_name {
    type: string
    sql: ${TABLE}."index_name" ;;
  }

  dimension: indexrelid {
    type: string
    sql: ${TABLE}."indexrelid" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."schema_name" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."table_name" ;;
  }
  measure: count {
    type: count
    drill_fields: [am_name, table_name, index_name, schema_name]
  }
}
