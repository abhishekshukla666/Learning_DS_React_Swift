
/*
 - Minimum Absolute Difference between Array
 */

func findMinimumAbsoluteDiffArray(count: Int, arr: [Int]) -> Int {
    
    var minimumValue = -1
    var absoluteSum = 0
    
    for i in 0..<arr.count {
        if (i + 1) < arr.count {
            for j in i+1..<arr.count {
                absoluteSum = abs(arr[i] - arr[j])
                if minimumValue == -1 {
                    minimumValue = absoluteSum
                } else {
                    if absoluteSum < minimumValue {
                        minimumValue = absoluteSum
                    }
                }
            }
        }
    }
    return minimumValue
}

findMinimumAbsoluteDiffArray(count: 10, arr: [-59, -36, -13, 1, -53, -92, -2, -96, -54, 75])
