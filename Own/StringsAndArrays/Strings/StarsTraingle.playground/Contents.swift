
let treeHeight = 6
let treeWidth = treeHeight * 2

for lineNumber in 1...treeHeight {
    
    // How many asterisks to print
    let stars = 2 * lineNumber - 1
//    print("Starts: \(stars)")
    var line = ""
    
    // Half the non-star space
    let spaces = (treeWidth - stars) / 2
//    print("Spaces: \(spaces)\n")
    
    if spaces > 0 {
        line = String(repeating: " ", count: spaces)
    }
    
    line += String(repeating: "*", count: stars)
    print(line)
}
