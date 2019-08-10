
//let arr = [-2, 1, 3, -4, 5]
let arr = [3, 2, 1, 4, 6, 5]

func maxArrSum(arr: [Int]) -> Int {
    var maxArrSum = 0
    
    var include = arr[0]
    var exclude = 0
    var excludeNew = 0
    print("Arr                                              = ", arr, "\n")
    for i in 1..<arr.count {
        print("include                                          = ", include, "\t exclude: ", exclude)
        excludeNew = (include > exclude) ? include: exclude
        print("ExcludeNew (greater value of include or exclude) = ", excludeNew)
        include = exclude + arr[i]
        print("include (exclude + arr[i])                       = ", include)
        exclude = excludeNew
        print("exclude                                          = ", exclude)
        print("\n")
    }
    maxArrSum = (include > exclude) ? include: exclude
    return maxArrSum
}

maxArrSum(arr: arr)
