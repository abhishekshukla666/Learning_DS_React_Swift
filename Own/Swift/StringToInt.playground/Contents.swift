
/*
 - Convertion of String To Int
 */

import Foundation

var sampleString = "21337"

func convert(string: String) -> Int {
    
    var convertedInt = 0
    
    /*
     - Applying simple algorithm to solve our change
     */
    
    /*
     - What are possible ways to write it down
     1337 = 1000 + 300 + 30 + 7
     1337 = 1 * 10^3 + 3 * 10^2 + 3 * 10^1 + 7 * 10^0
     */
    
    let valueDict = [ "1" as Character: 1, "2": 2, "3": 3, "7": 7 ]
    
    for (index, char) in string.enumerated() {
        let exponent = string.count - index - 1
        if let value = valueDict[char] {
            let desimalNumb = Decimal(value) * pow(10, exponent)
            let numb = NSDecimalNumber(decimal: desimalNumb).intValue
            print(numb)
            convertedInt += numb
        }
    }
    
    return convertedInt
}

print("Final Int is: \(convert(string: sampleString))")
