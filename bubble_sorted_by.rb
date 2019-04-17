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
                if yield(arr[i-1], arr[i]) > 0
                    swipe(arr, i-1,i )
                end
                tempSizeArray = i
            end #if
        end  #for
    sizeArr = tempSizeArray
    end #until
arr
end

sorted_by = bubble_sort_by(["hi", "hey", "hello"]) {|first, second| 
        first.length - second.length
} 

p sorted_by