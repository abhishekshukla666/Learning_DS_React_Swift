

/*
 Consider Stair case size = 4
 
 #
 ##
 ###
 ####
 
 */


// Complete the staircase function below.
func staircase(n: Int) -> Void {
    
    for i in 1...n {
        
        var line = ""
        var stars = i
        let spaces = n - i
        if spaces > 0 {
            line = String(repeating: " ", count: spaces)
        }
        line += String(repeating: "#", count: stars)
        print(line)
    }
}

staircase(n: 6)
