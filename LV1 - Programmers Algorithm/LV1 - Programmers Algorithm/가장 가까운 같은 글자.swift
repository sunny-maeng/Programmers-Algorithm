/*
 https://school.programmers.co.kr/learn/courses/30/lessons/142086
 */

import Foundation

func solution(_ s:String) -> [Int] {
    let array = s.map { $0 }
    var answer: [Int] = []
    var dictionary: [Character: Int] = [:]
    var currentIndex = 0

    for number in array {
        if dictionary[number] == nil {
            answer.append(-1)
        } else {
            let index = currentIndex - dictionary[number]!
            answer.append(index)
        }
            dictionary[number] = currentIndex
            currentIndex += 1
    }

    return answer
}

func solution2(_ s: String) -> [Int] {
    return s.enumerated().map { (i, c) in i - (Array(s)[0..<i].lastIndex(of: c) ?? i + 1) }
}
