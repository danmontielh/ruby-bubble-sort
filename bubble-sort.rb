#method to make swipe

def swipe(arr, index1, index2)
    tempIndex = arr[index1]
    arr[index1] = arr[index2]
    arr[index2] = tempIndex
    return arr
end


