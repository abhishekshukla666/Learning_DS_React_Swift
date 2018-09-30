
/*
 - Maximum Sum of Hour Glass in Matrix
 */
var array = [
    [-1, -1, 0, -9, -2, -2],
    [-2, -1, -6, -8, -2, -5],
    [-1, -1, -1, -2, -3, -4],
    [-1, -9, -2, -4, -4, -5],
    [-7, -3, -3, -2, -9, -9],
    [-1, -3, -1, -2, -4, -5]
//    [1, 1, 1, 0, 0],
//    [0, 1, 0, 0, 0],
//    [1, 1, 1, 5, 0],
//    [0, 0, 0, 0, 0],
//    [0, 0, 0, 0, 0]
]

var maxSum = -999
for i in 0..<array.count - 2 {
    for j in 0..<array[i].count - 2 {
        let sum =
            (array[i][j] + array[i][j + 1] + array[i][j + 2]) +
            (array[i + 1][j + 1]) +
            (array[i + 2][j] + array[i + 2][j + 1] + array[i + 2][j + 2])
        
        if maxSum < sum {
            maxSum = 0
            maxSum += sum
        }
    }
}

//print(maxSum)

//var sum = 0
//for row in 0..<array.count {
//    for column in 0..<array[row].count {
//        print(array[row][column])
//    }
//}



let numberArr = [
    [2, 0, 0],
    [0, 3, 0],
    [0, 0, 7]
]

for i in 0..<numberArr.count {
//    print(numberArr[i])
    for j in 0..<numberArr[i].count {
        print("\(numberArr[i][j])")
    }
    
}
