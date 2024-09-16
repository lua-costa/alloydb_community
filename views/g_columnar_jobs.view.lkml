# The name of this view in Looker is "G Columnar Jobs"
view: g_columnar_jobs {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.g_columnar_jobs ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Database Name" in Explore.

  dimension: database_name {
    type: string
    sql: ${TABLE}."database_name" ;;
  }

  dimension: database_oid {
    type: number
    value_format_name: id
    sql: ${TABLE}."database_oid" ;;
  }

  dimension: dependent_jobs {
    type: string
    sql: ${TABLE}."dependent_jobs" ;;
  }

  dimension: is_schema_change_op {
    type: yesno
    sql: ${TABLE}."is_schema_change_op" ;;
  }

  dimension: job_class {
    type: string
    sql: ${TABLE}."job_class" ;;
  }

  dimension: job_id {
    type: number
    sql: ${TABLE}."job_id" ;;
  }

  dimension: job_type {
    type: string
    sql: ${TABLE}."job_type" ;;
  }

  dimension: relation_name {
    type: string
    sql: ${TABLE}."relation_name" ;;
  }

  dimension: relation_oid {
    type: number
    value_format_name: id
    sql: ${TABLE}."relation_oid" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."schema_name" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }
  measure: count {
    type: count
    drill_fields: [schema_name, database_name, relation_name]
  }
}
