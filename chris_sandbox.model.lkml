# include all the views
include: "*.view"
include: "chris_sandbox.explore.lkml"

# connection: "thelook_events_redshift"

# # include all the views
# # include: "*.view"

# datagroup: chris_sandbox_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }

# persist_with: chris_sandbox_default_datagroup

# explore: order_items {
#   view_name: order_items
#   view_label: "Order Items"
#   extension: required


#   join: inventory_items {
#     type: left_outer
#     sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
#     relationship: many_to_one
#   }
# }
