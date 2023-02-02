def fibs(n, array = [])
    for index in 0..n-1
        if index == 0
            array[index] = 0
        elsif index == 1
            array[index] = 1
        else
            array[index] = array[index-1] + array[index-2]
        end
    end
    array
end

def fibs_rec(n, count = 0, array =[])
    if count == n-1
        array << array[count-1] + array[count-2]    #0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144.
        return array
    elsif count == 0
        array << 0
        return fibs_rec(n, count+1, array)
    elsif count == 1
        array << 1
        return fibs_rec(n, count+1, array)
    else
        array << array[count-1] + array[count-2]
        return fibs_rec(n, count+1, array)
    end
end




p fibs(13)
p fibs_rec(13)