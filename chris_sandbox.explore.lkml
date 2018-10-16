connection: "thelook_events_redshift"

include: "*.view"

explore: order_items {
  view_name: order_items
  view_label: "Order Items"
  extension: required

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }
}
