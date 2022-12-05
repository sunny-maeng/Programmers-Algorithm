/*
 자릿수 더하기 ✅ ❌(221201)
 https://school.programmers.co.kr/learn/courses/30/lessons/12931
 자연수 N이 주어지면, N의 각 자릿수의 합을 구해서 return 하는 solution 함수를 만들어 주세요.
 예를들어 N = 123이면 1 + 2 + 3 = 6을 return 하면 됩니다.
 */

import Foundation



// 오답 : Character는 Int타입으로 형변환이 안되서 String으로 다시 묶어줘야함 > Soultion2처럼
// func solution(_ n:Int) -> Int {
//    return String(n).map { Int($0)! }.reduce(0, +)
//}


//✅ String 으로 다시 묶어줘야함!!!!! 캐릭터는 인트형 변환이 불가능
func solution(_ n:Int) -> Int {
    return String(n).map { Int(String($0))! }.reduce(0, +)
}

//✅ Character -> Int 변환은 wholeNumberValue 사용
// 문자가 의미하는 숫자를 옵셔널 Int로 반환함...!
func solution(_ n:Int) -> Int {
    return String(n).map { $0.wholeNumberValue! }.reduce(0, +)
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
