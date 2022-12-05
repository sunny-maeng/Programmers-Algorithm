/*
 정수 내림차순으로 배치하기
 https://school.programmers.co.kr/learn/courses/30/lessons/12933
 
 함수 solution은 정수 n을 매개변수로 입력받습니다.
 n의 각 자릿수를 큰것부터 작은 순으로 정렬한 새로운 정수를 리턴해주세요.
 예를들어 n이 118372면 873211을 리턴하면 됩니다.

 제한 조건
 n은 1이상 8000000000 이하인 자연수입니다.
 */
import Foundation


//오답 형변환시 옵셔널이라 꺼낼때 강제 언래핑 필요
// 1. array에서 다시 꺼낼 때 String +로 붙여주기

func solution(_ n:Int64) -> Int64 {
    let array = String(n).map { String($0) }.sorted(by:>)
    var answer = String()
    
    for i in 1..<array.count {
        answer += array[i]
    }
    
    return Int64(answer)!
}



func solution2(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted{ $0 > $1 }))!
}

func solution3(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted(by: >)))!
}


let a = 1236563
