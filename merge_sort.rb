def split_in_two(array)
    array_length = array.length
    array_half = array_length / 2
    return [array[0...array_half], array[array_half...array_length]]
end

def dissect_array(array)
    result = split_in_two(array)
    for i in 0..1
        if result[i].length > 1
            result[i] = dissect_array(result[i])
        end
    end
    return result
end

def merge_sorted_arrays(array1, array2)
    result = []
    until array1.length == 0 || array2.length == 0
        array1[0] < array2[0] ? result << array1.shift : result << array2.shift
    end
    array2.length == 0 ? result += array1 : result += array2
    return result
end

def has_nested_arrays?(array)
    result = false
    for i in 0..1
        if array[i].kind_of?(Array)
            result = true
        end
    end
    return result
end

def merge_subsections(array)
    for i in 0..1
        if has_nested_arrays?(array[i])
            array[i] = merge_subsections(array[i])
        end
    end
    return merge_sorted_arrays(array[0], array[1])
end

def merge_sort(array)
    return merge_subsections(dissect_array(array))
end