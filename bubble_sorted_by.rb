#method to make swipe

def swipe(arr, index1, index2)
    tempIndex = arr[index1]
    arr[index1] = arr[index2]
    arr[index2] = tempIndex
    return arr
end

def bubble_sort_by(arr)
    sizeArr = arr.length
    until sizeArr <= 1
        tempSizeArray = 0;
        for i in 1..sizeArr-1 do
            if arr[i-1] > arr[i]
            if block_given?
                if yield(arr[i-1], arr[i]) > 0
                    swipe(arr, i-1,i )
                end
            end 
                swipe(arr, i-1,i )
                tempSizeArray = i
            end #if
        end  #for
    sizeArr = tempSizeArray
    end #until
arr
end

# sorted_with_block = bubble_sort_by(["heya", "lp", "c", "a"]) { |first, second| 
    
#     first.length - second.length } 

# p sorted_with_block

# sorted_without_block = bubble_sort_by(["heya", "lp", "c", "a"])

# p sorted_without_block