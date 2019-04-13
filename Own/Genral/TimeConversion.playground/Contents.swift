/*
 * Complete the timeConversion function below.
 
    Hours = 24
    Mintues = 60
    Second = 60
 */

func timeConversion(s: String) -> String {
    
    var standaredTime = ""
    let splitedArr = s.split(separator: ":")
    
    
    standaredTime += get24Hours(hour: Int(splitedArr[0]) ?? 0)
    
    let minutes = (Int(splitedArr[1]) ?? 0)
    if minutes < 9 {
        standaredTime += "0\(minutes):"
    } else {
        standaredTime += "\(minutes):"
    }
    
    let newCh = splitedArr[2].dropLast(2)
    standaredTime += "\(newCh)"
    
    return standaredTime
}

func get24Hours(hour: Int) -> String {
    var hourString = ""
    var hours = 12 + hour
    if hours == 24 {
        hourString += "00:"
    } else if hours < 10 {
        hourString += "0\(hour):"
    } else {
        hourString += "\(hours):"
    }
    return hourString
}

print(timeConversion(s: "12:45:54PM"))
//06:40:03AM
//12:40:22AM
