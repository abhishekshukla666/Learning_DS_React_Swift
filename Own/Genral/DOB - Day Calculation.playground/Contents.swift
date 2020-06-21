
enum Day: Int {
    case Sunday     = 0
    case Monday     = 1
    case Tuesday    = 2
    case Wednesday  = 3
    case Thursday   = 4
    case Friday     = 5
    case Saturday   = 6
    case Unkown     = -1
}

enum Month: Int {
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
    
    var value: Int {
        switch self {
        case .January, .March, .May, .July, .August, .October, .December: return 3
        case .February                                                  : return 0
        case .April, .June, .September, .November                       : return 2
        }
    }
}

enum Century: Int {
    case Unknown
    case Senventeen /* 1601 - 1700 */
    case Eighteen   /* 1701 - 1800 */
    case Nineteen   /* 1801 - 1900 */
    case Twenty     /* 1901 - 2000 */
    
    var value: Int {
        switch self {
        case .Unknown                           : return 0
        case .Senventeen                        : return 5
        case .Eighteen                          : return 10
        case .Nineteen                          : return 15
        case .Twenty                            : return 21
        }
    }
}

func centuryOfBirth(year: Int) -> Century {
    var century = 0
    if year <= 0 {
        return .Unknown
    }
    if (year % 100 == 0) {
        century = year / 100
    } else {
        century = year / 100 + 1
    }
    print("Century: \t", century)
    switch century-1 {
    case 17: return .Senventeen
    case 18: return .Eighteen
    case 19: return .Nineteen
    case 20: return .Twenty
    default: return .Unknown
    }
}

func yearOfBirth(year: Int) -> Int {
    var yearOfBirth = ((year / 100) * 100)
    yearOfBirth = year - yearOfBirth
    return yearOfBirth
}

func getLeapYears(inThat year: Int, month: Month) -> Int {
    var leapYearsCount = 0
    for n in 1...year {
        if n % 4 == 0, month != .January {
            leapYearsCount += 1
        }
    }
    return leapYearsCount
}

func getDay(by number: Int) -> Day {
    switch number {
        case 1: return .Monday
        case 2: return .Tuesday
        case 3: return .Wednesday
        case 4: return .Thursday
        case 5: return .Friday
        case 6: return .Saturday
        case 0: return .Sunday
    default:
        return .Unkown
    }
}

func getMonthCount(by dobMonth: Month) -> Int {
    let months: [Month] = [.January, .February, .March, .April, .May, .June, .July, .August, .September, .October, .November, .December]
    var monthsDays = 0
    for month in months {
        if month == dobMonth { break }
        print(month)
        monthsDays += month.value
    }
    return monthsDays
}

func dayOfBirth(dobDate: Int, dobMonth: Month, dobYear: Int) -> Day {
    let century = centuryOfBirth(year: dobYear).value
    let daysInYear = (yearOfBirth(year: dobYear) - 1) * 365
    let leapYear = getLeapYears(inThat: yearOfBirth(year: dobYear), month: dobMonth)
    let monthDays = getMonthCount(by: dobMonth) + dobDate
    print("Century: \t", century, "Days In Year: \t", daysInYear, "Leap Years: \t", leapYear, "months days: \t", monthDays, "dob Date: \t", dobDate)
    let dayCount = (century + daysInYear + leapYear + monthDays) % 7
    
    return getDay(by: dayCount)
}

dayOfBirth(dobDate: 23, dobMonth: .February, dobYear: 1990)


