def bubble_sort(array_to_sort)
    is_sorted = false
    while not is_sorted
        swapped_this_iteration = false
        for i in 0...array_to_sort.length-1
            first_element = array_to_sort[i]
            second_element = array_to_sort[i+1]
            if first_element > second_element
                array_to_sort[i+1] = first_element
                array_to_sort[i] = second_element
                swapped_this_iteration = true
            end
        end
        if not swapped_this_iteration then is_sorted = true end 
    end
    return array_to_sort
end

puts bubble_sort([4,3,78,2,0,2])