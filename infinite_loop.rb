def infinite_loop?(list)
  check1 = list.next_node
  check2 = list.next_node

  until check2.nil?
    check2 =check2.next_node
    return false if check2.nil?

    check2 = check2.next_node
    check1 = check1.next_node
    return true if check2 == check1
  end
  return false
end