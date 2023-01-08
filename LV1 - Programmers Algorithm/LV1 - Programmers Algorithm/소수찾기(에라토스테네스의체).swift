// 소수 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/12921

import Foundation

func solution(_ n:Int) -> Int {
    var isDecimalNumber: [Bool] = Array(repeating: true, count: n+1)
    
    isDecimalNumber[0] = false
    isDecimalNumber[1] = false
    
    for i in 2...n {
        for j in stride(from: i+i, to: n+1, by: i) {
            isDecimalNumber[j] = false
        }
    }
    
    return isDecimalNumber.filter { $0 == true }.count
}

