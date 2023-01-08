// https://school.programmers.co.kr/learn/courses/30/lessons/12982

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let requires = d.sorted(by: >)
    var totalRequire = requires.reduce(0, +)
    var count = requires.count
    
    for require in requires {
        guard totalRequire > budget else {
            return count
        }
        
        totalRequire -= require
        count -= 1
    }
    
    return count
}


func solution2(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget

    return d.sorted().filter{
        budget = budget - $0
        return budget >= 0
    }.count
}
