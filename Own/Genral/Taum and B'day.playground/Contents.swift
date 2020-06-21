import UIKit

var str = "Hello, playground"


func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
    var total = 0
    
    // It means, we will buy white one's and colour them to black
    if bc > (wc + z) {
        let sumBlackAndWhite = b + w
        total = sumBlackAndWhite * wc + b * z
        
    } else if wc > (bc + z) {
        let sumBlackAndWhite = b + w
        total = sumBlackAndWhite * bc + w * z
    } else {
        total = b * bc + w * wc
    }
    return total

}

//taumBday(b: 10, w: 10, bc: 1, wc: 1, z: 1)
//taumBday(b: 3, w: 6, bc: 9, wc: 1, z: 1)
//taumBday(b: 7, w: 7, bc: 4, wc: 2, z: 1)
taumBday(b: 3, w: 3, bc: 1, wc: 9, z: 2)
