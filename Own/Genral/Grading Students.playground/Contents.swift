

func gradingStudents(grades: [Int]) -> [Int] {
    var updatedNumbers = [Int]()
    for n in grades {
        if n > 37 {
            if (n + 2) % 5 == 0 {
                let newG = n + 2
                updatedNumbers.append(newG)
            } else if (n + 1) % 5 == 0 {
                let newG = n + 1
                updatedNumbers.append(newG)
            } else {
                updatedNumbers.append(n)
            }
        } else {
            updatedNumbers.append(n)
        }
    }
    return updatedNumbers
}

gradingStudents(grades: [73, 67, 38, 33, 81, 97, 56, 50, 84])
