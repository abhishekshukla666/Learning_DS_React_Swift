//: [Previous](@previous)

import Foundation

//var word = "Hello, playground"
//
//func reverseString(wordToReverse: String) -> String {
//    var reversedString: String = ""
//    var tobeReversedString: String = wordToReverse
//    var i = 0
//    var j = wordToReverse.count
//    for i in 0..<j/2 {
//        // swap first letter with the last letter in the
//        reversedString = tobeReversedString
//        tobeReversedString = tobeReversedString[j-1];
//        tobeReversedString[j-1] = reversedString;
//        // move the pointer
//        j = j - 1
//    }
//    return reversedString
//}
////Using swift lib
////print(String(word.reversed()))
//
//// Using Assigning Value
//func reverseStringLocal(wordToReverse: String) -> [Character] {
//
//    //Create empty character Array.
//    var strArray = [Character]()
//
//    //Loop through each character in the String
//    for character in wordToReverse {
//        //Insert the character in the Array variable.
//        strArray.append(character)
//    }
//
//    //Create a empty string
//    var reversedStr:String = ""
//
//    //Read the array from backwards to get the characters
//    for index in strArray.count...0 {
//        //Concatenate character to String.
//        reversedStr.append(strArray[index])
//    }
//    return strArray
//}
////Using char array and insert
//func reverseString(wordToReverse: String) -> String {
//    guard wordToReverse.count > 1 else {
//        return wordToReverse
//    }
//
//    var reversedWord = [Character]()
//
//    for char in wordToReverse {
//        reversedWord.insert(char, at: 0)
//    }
//    return String(reversedWord)
//}
////print(reverseString(wordToReverse: word))
//
////Swap in-place, using char array
//func reverseString2(wordToReverse: String) -> String {
//    guard wordToReverse.count > 1 else {
//        return wordToReverse
//    }
//
//    var newWord = Array(wordToReverse)
//    let maxIndex = newWord.count - 1
//
//    for i in 0...maxIndex {
//        if i > maxIndex - i {
//            break
//        }
//        (newWord[i], newWord[maxIndex - i]) = (newWord[maxIndex - i], newWord[i])
//    }
//    return String(newWord)
//}
//
////print(reverseStringLocal(wordToReverse: word))

