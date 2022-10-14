/*
 약수의 개수와 덧셈 ✅꼭 다시보쟈?✅
 
 문제 설명
 두 정수 left와 right가 매개변수로 주어집니다. left부터 right까지의 모든 수들 중에서, 약수의 개수가 짝수인 수는 더하고, 약수의 개수가 홀수인 수는 뺀 수를 return 하도록 solution 함수를 완성해주세요.

 
 제한사항
 1 ≤ left ≤ right ≤ 1,000
 
 입출력 예
 left    right    result
 13      17        43
 24      27        52
 */

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    let arr = Array(left...right)
    var count = 0
    var answer = 0
    
    for i in 0..<arr.count {
        for x in 1...arr[i] {
            if arr[i] % x == 0 {
                count += 1
            }
        }
        if count % 2 == 0 {
            answer += arr[i]
        } else {
            answer -= arr[i]
        }
        
        count = 0
    }
    
    return answer
}

// for in 구문을 대신해서 forEach를 사용했고, $0이 두번사용되므로 클로저 매개변수 i 를 사용해줌)
func solution2(_ left:Int, _ right:Int) -> Int {
    var answer: Int = 0

    Array(left...right).forEach { i in (Array(1...i).filter { i % $0 == 0 }.count) % 2 == 0 ? (answer += i) : (answer -= i) }
    
    return answer
}

//forEach 대신 map을 쓸수도있다. 사실 map에도 어레이의 모든 엘레멘트를 전부 순환하는게 포함되어있느까..!!
func solution3(_ left: Int, _ right: Int) -> Int {
    return (left...right).map { i in (1...i).filter { i % $0 == 0 }.count % 2 == 0 ? i : -i }.reduce(0, +)
}
