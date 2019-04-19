#method to make swipe

def swipe(arr, index1, index2)
    tempIndex = arr[index1]
    arr[index1] = arr[index2]
    arr[index2] = tempIndex
    return arr
end

#bubble sort 

def bubble_sort(arr)
    sizeArr = arr.length
    until sizeArr <= 1
        tempSizeArray = 0;
        for i in 1..sizeArr-1 do
            if arr[i-1] > arr[i]
                swipe(arr, i-1, i)
                tempSizeArray = i
            end #if
        end  #for
    sizeArr = tempSizeArray
    end #until
arr
end #method 

 p bubble_sort([4,3,78,2,0,2])
