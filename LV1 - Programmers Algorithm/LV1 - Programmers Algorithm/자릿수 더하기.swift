/*
 자릿수 더하기
 https://school.programmers.co.kr/learn/courses/30/lessons/12931
 자연수 N이 주어지면, N의 각 자릿수의 합을 구해서 return 하는 solution 함수를 만들어 주세요.
 예를들어 N = 123이면 1 + 2 + 3 = 6을 return 하면 됩니다.
 */

import Foundation

func solution(_ n:Int) -> Int {
    var answer:Int = 0
    let numberArray = String(n).map{String($0)}
    
    for number in 0...numberArray.count-1 {
        answer += Int(numberArray[number])!
    }
    
    return answer
}


func solution2(_ n:Int) -> Int {
        return String(n).reduce(0, { Int($0) + Int(String($1))! })
}

func solution3(_ n:Int) -> Int
{
    var answer:Int = 0
    var number = n

    while number > 0 {
        answer += number % 10
        number /= 10
    }

    return answer
}

print(solution(11))
print(solution2(11))
print(solution(211))



