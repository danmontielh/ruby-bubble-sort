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

 bubble_sort([4,3,78,2,0,2])



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


sorted_by = bubble_sort_by(["hola", "dos", "tress", "a"]) {|first, second| 
        first.length - second.length
} 

p sorted_by


# def bubble_sort_by(arr)

#    arr.each {|num| yield(num)}

# end

#  bubble_sort_by([4,3,78,2,0,2) (|n| puts n*2)


# {p ["danaa", "dos", "cuatrp"].sort! {|first, second| 
#      second.length - first.length 
# }}