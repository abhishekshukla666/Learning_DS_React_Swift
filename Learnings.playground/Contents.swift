//: Playground - noun: a place where people can play

import UIKit

var x = 20
var y = 10
func f(a: inout Int, b: inout Int) {
    a += 1
    b += 10
}

//f(a: &x, b: &y)

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    a = a + b // 20 + 10 = 30
    b = a - b // 30 - 10 = 20
    a = a - b // 30 - 20 = 10
}

swapTwoInts(&x, &y)
print(x)
print(y)


let str = "helloslkhellodjladfjhello"
let findStr = "lo"

extension String
{
    /**
     Counts the occurrences of a given substring by calling Strings `range(of:options:range:locale:)` method multiple times.
     
     - Parameter substring : The string to search for, optional for convenience
     
     - Parameter allowOverlap : Bool flag indicating whether the matched substrings may overlap. Count of "🐼🐼" in "🐼🐼🐼🐼" is 2 if allowOverlap is **false**, and 3 if it is **true**
     
     - Parameter options : String compare-options to use while counting
     
     - Parameter range : An optional range to limit the search, default is **nil**, meaning search whole string
     
     - Parameter locale : Locale to use while counting
     
     - Returns : The number of occurrences of the substring in this String
     */
    public func count(
        occurrencesOf substring: String?,
        allowOverlap: Bool = false,
        options: String.CompareOptions = [],
        range searchRange: Range<String.Index>? = nil,
        locale: Locale? = nil) -> Int
    {
        guard let substring = substring, !substring.isEmpty else { return 0 }
        
        var count = 0
        
        let searchRange = searchRange ?? startIndex..<endIndex
        
        var searchStartIndex = searchRange.lowerBound
        let searchEndIndex = searchRange.upperBound
        
        while let rangeFound = range(of: substring, options: options, range: searchStartIndex..<searchEndIndex, locale: locale)
        {
            count += 1
            
            if allowOverlap
            {
                searchStartIndex = index(rangeFound.lowerBound, offsetBy: 1)
            }
            else
            {
                searchStartIndex = rangeFound.upperBound
            }
        }
        
        return count
    }
}

print(str.count(occurrencesOf: findStr))

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}




