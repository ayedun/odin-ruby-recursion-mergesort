def merge_sort(array)
    if array.length <= 1
        return array
    else
        left_half =merge_sort(array.slice!(0, array.length / 2))
        right_half =merge_sort(array)
    end


    sorted = []

    until left_half.empty? || right_half.empty?
        left_half.first <= right_half.first ? sorted << left_half.shift : sorted <<right_half.shift
    end

    sorted + left_half + right_half

    

end

p merge_sort([6,3,2,5,1,7])
p merge_sort ([3, 4, 2, 1, 5, 0, 10, 9, 7, 8, 6])