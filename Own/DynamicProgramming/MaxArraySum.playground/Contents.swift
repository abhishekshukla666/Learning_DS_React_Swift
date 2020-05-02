
//let arr = [-2, 1, 3, -4, 5]
let arr = [3, 2, 1, 4, 6, 5]

func maxArrSum(arr: [Int]) -> Int {
    var maxArrSum = 0
    var include = arr[0]
    var exclude = 0
    var excludeNew = 0
    print("Befo added i: \t  exclude: \t", exclude, "include: \t", include)
    for i in 1..<arr.count {
        excludeNew = (include > exclude) ? include: exclude
        include = exclude + arr[i]
        exclude = excludeNew
        print("After added i: \t ", i, "exclude: \t", exclude, "include: \t", include)
        print("\n\n")
    }
    maxArrSum = (include > exclude) ? include: exclude
    return maxArrSum
}

maxArrSum(arr: arr)
