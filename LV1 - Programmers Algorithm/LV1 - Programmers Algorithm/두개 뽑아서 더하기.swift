// https://school.programmers.co.kr/learn/courses/30/lessons/68644

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var a: Set<Int> = []
    
    for (index, number) in numbers.enumerated() {
        numbers[(index + 1)..<numbers.count].forEach {
            a.insert(number + $0)
        }
    }
    
    return Array(a).sorted()
}

func solution2(_ numbers:[Int]) -> [Int] {
    var arr: [Int] = []

    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            arr.append(numbers[i]+numbers[j])
        }
    }

    return Array(Set(arr)).sorted()
}
