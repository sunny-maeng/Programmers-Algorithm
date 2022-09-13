/*
 나머지가 1이 되는 수 찾기
 월간 코드 챌린지 시즌3
 https://school.programmers.co.kr/learn/courses/30/lessons/87389
 */

import Foundation

func solution(_ n: Int) -> Int {
    for divisor in 1...n {
        if n % divisor == 1 {
            return divisor
        }
    }
    
    return n
}

func solution2 (_ n: Int) -> Int {
    var answer = 1

    while n % answer != 1 {
        answer += 1
    }
    return answer
}


print(solution(2))
print(solution2(2))
print(solution(11))
print(solution2(11))
