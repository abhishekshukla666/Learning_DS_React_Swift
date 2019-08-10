
let arr: Array<Int> = [1, 3, -2, 7, 5, 8]

for i in 0..<arr.count {
    var adj = Array<Int>()
    adj.append(arr[i])
    print("\n")
    var nextIndex = i+2
    for j in nextIndex..<arr.count {
        
        print("nextIndex: ", nextIndex, "  j: ", j)
        
        if nextIndex.isMultiple(of: 2) {
            print("next index is multiple of 2")
            if j.isMultiple(of: 2) {
                print("j is multiple of 2")
//                if arr.indices.contains(arr[j]) {
                    adj.append(arr[j])
//                } else {
//                    print("nnnooooo")
//                }
            }
        }
//
//        if !nextIndex.isMultiple(of: 2) {
//            print("next index is not multiple of 2")
//            if !j.isMultiple(of: 2) {
//                print("j is not multiple of 2")
//                if arr.indices.contains(arr[j]) {
//                    adj.append(arr[j])
//                }
//            }
//        }
    }
    
    
    print(adj)
}
