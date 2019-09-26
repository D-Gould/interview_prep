# input: 3 arrays of integers
def first_come_first_served?(take_out_orders, dine_in_orders, served_orders)
  return orders_returned_in_order?(take_out_orders, served_orders) && orders_returned_in_order?(dine_in_orders, served_orders)
end

def orders_returned_in_order?(orders, served_orders)
  idx = served_orders.find_index(orders[0])
  orders[1..-1].each do |order_num|
    new_idx = served_orders.find_index(order_num)
    if new_idx < idx
      return false
    else
      idx = new_idx
    end
  end
  return true
end
# output: boolean, whether or not customers were served in the correct order

take_out_orders = [1, 3, 5]
dine_in_orders = [2, 4, 6]
served_orders = [1, 2, 4, 6, 3, 5]

puts first_come_first_served?(take_out_orders, dine_in_orders, served_orders)
