function countSort(list)
    n = length(list)
    
    if n == 0
        return list
    end

    minElement = maxELement = list[1]
    
    for element in list
        if element > maxELement
            maxELement = element
        end

        if element < minElement
            minElement = element
        end
    end

    range = maxELement - minElement + 1

    count = [0 for i in 1:range]
    
    for element in list
        count[element - minElement + 1] = count[element - minElement + 1] + 1
    end
     
    newArr = []

    for index in eachindex(count)
        for j in 1:count[index]
            push!(newArr, index + minElement - 1)
        end
    end

    return newArr
end


println("Enter the number of elements in the list")
n = parse(Int64, readline())
println("Enter the elements of the list")
list = Array{Int64, 1}(undef, n)
for i in 1:5
    list[i] = parse(Int64, readline())
end
println(countSort(list))
