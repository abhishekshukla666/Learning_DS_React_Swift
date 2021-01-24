
extension Collection {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[ index] : nil
    }
}
let data = "12121"
let intArray = data.compactMap({ Int(String($0)) })
func numWays() -> Int {
    var memo = [Int]()
    return helper(data: intArray, k: intArray.count, memo: &memo)
}

func helper(data: [Int], k: Int, memo: inout [Int]) -> Int {
    if k == 0 {
        memo.insert(1, at: k)
        return 1
    }
    let s = data.count - k
    if data[s] == 0 || k == -1 {
        return 0
        
    }
    if let memoValue = memo[safe: k] {
        return memoValue
    }
    var result = helper(data: data, k: k-1, memo: &memo)
    if let sValue = data[safe: s], let sPlusValue = data[safe: s+1] {
        let pair = Int("\(sValue)\(sPlusValue)")!
        if k >= 2 && pair <= 26 {
            result += helper(data: data, k: k-2, memo: &memo)
        }
    }
    memo.insert(result, at: k)
    return result
}

print("Final Number of ways: ", numWays())
