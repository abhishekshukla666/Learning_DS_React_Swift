import Foundation
import UIKit

/*
 ------------------------------------------ Time Display On Social Media ------------------------------------------
 */

extension Date {
    
    func timeAgoDisplay() -> String {
        let secondsAgo = Int(Date().timeIntervalSince(self))
        
        let minutes = 60
        let hour    = minutes * 60
        let day     = hour * 24
        let week    = day * 7
        let month   = week * 4
        
        let quotient: Int
        let unit: String
        
        if secondsAgo < minutes {
            quotient    = secondsAgo
            unit        = "seconds"
        } else if secondsAgo < hour {
            quotient    = secondsAgo / minutes
            unit        = "min"
        } else if secondsAgo < day {
            quotient    = secondsAgo / hour
            unit        = "hour"
        } else if secondsAgo < week {
            quotient    = secondsAgo / day
            unit        = "day"
        } else if secondsAgo < month {
            quotient    = secondsAgo / week
            unit        = "week"
        } else {
            quotient    = secondsAgo / month
            unit        = "month"
        }
        
        return "\(quotient) \(unit)\(quotient == 1 ? "" : "s") ago"
    }
}
let now = Date()
let pastDate = Date(timeIntervalSinceNow: -64 * 65 * 24 * 7 * 2)
pastDate.timeAgoDisplay()

