# Define the database connection to be used for this model.
connection: "alloydb_community"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: alloydb_community_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: alloydb_community_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Alloydb Community"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: g_agg_stat_statements {}

explore: g_columnar_activity {}

explore: g_columnar_agg_stat_statements {}

explore: g_columnar_column_set_stat_statements {}

explore: g_columnar_columns {}

explore: g_columnar_columns_internal {}

explore: g_columnar_jobs {}

explore: g_columnar_memory_usage {}

explore: g_columnar_native_scan_unsupported_ops {}

explore: g_columnar_policies {}

explore: g_columnar_recommendation_stat_statements {}

explore: g_columnar_recommended_columns {}

explore: g_columnar_recommended_columns_internal {}

explore: g_columnar_relations {}

explore: g_columnar_relations_internal {}

explore: g_columnar_schedules {}

explore: g_columnar_stat_statements {}

explore: g_columnar_stats {}

explore: g_columnar_units {}

explore: g_columnar_wait_events {}

explore: g_columnar_whatif_columns {}

explore: g_columnar_whatif_relations {}

explore: g_lap_timer {}

explore: google_columnar_engine_vectorized_join_mem_users {}

explore: google_db_advisor_agg_query_recommendations {}

explore: google_db_advisor_agg_recommendations {}

explore: google_db_advisor_catalog_auto_config {}

explore: google_db_advisor_index_state {}

explore: google_db_advisor_local_auto_config {}

explore: google_db_advisor_query_tuning_advices {}

explore: google_db_advisor_recommended_columnar_configuration {}

explore: google_db_advisor_recommended_indexes {}

explore: google_db_advisor_recommended_indexes_to_drop {}

explore: google_db_advisor_stat_statements {}

explore: google_db_advisor_stats {}

explore: google_db_advisor_workload_advisory {}

explore: google_db_advisor_workload_columnar_report {}

explore: google_db_advisor_workload_report {}

explore: google_db_advisor_workload_report_detail {}

explore: google_db_advisor_workload_statements {}

explore: hypopg_list_indexes {}

explore: pgbench_accounts {}

explore: pgbench_branches {}

explore: pgbench_history {}

explore: pgbench_tellers {}

