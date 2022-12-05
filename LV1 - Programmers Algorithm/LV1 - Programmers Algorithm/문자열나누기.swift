/*
 https://school.programmers.co.kr/learn/courses/30/lessons/140108
 
 */

import Foundation

// 내풀이
func solution(_ s:String) -> Int {
    var answer: Int = 0
    var stack: [Character] = []
    var array = s.map { $0 }
    var number = 0
    var compareNumber = 0
    
        for element in array {
            if stack.count == 0 {
               stack.append(array.removeFirst())
                number += 1
            } else if element == stack.first {
                stack.append(array.removeFirst())
                number += 1
            }
            
            if element != stack.first {
                stack.append(array.removeFirst())
                compareNumber += 1
            }
            
            if number == compareNumber {
                answer += 1
                stack = []
            } else if array.count == 0 {
                answer += 1
                return answer
            }
        }
    
    return answer
}

//다른ㅅㅏ람풀이 ,, 너무 복잡;
func solution2(_ s: String) -> Int {
    var array: [String] = []
    var acc = "a"

    for c in s {
        if !acc.isEmpty &&
            Dictionary(grouping: Array("\(acc)\(c)"), //aa , 1 == aa.filter ( { a != a ?? c
                       by: { $0 })[acc.first]?.count == "\(acc)\(c)".filter({ $0 != acc.first ?? c }).count {
            acc.removeAll()
            array.append("\(acc)\(c)")
        } else {
            acc += String(c)
        }
    }
    return array.count + (acc.isEmpty ? 0 : 1)
}

/*
 let students = ["Kofi", "Abena", "Efua", "Kweku", "Akosua"]
 let studentsByLetter = Dictionary(grouping: students, by: { $0.first! })
 // ["E": ["Efua"], "K": ["Kofi", "Kweku"], "A": ["Abena", "Akosua"]]

 let numbers = [123, 1, 12, 1234, 12, 123, 12345, 12, 1, 123]
 let numberDictionary = Dictionary(grouping: numbers, by: { $0 })
 // [1234: [1234], 1: [1, 1], 12: [12, 12, 12], 12345: [12345], 123: [123, 123, 123]]

 */
