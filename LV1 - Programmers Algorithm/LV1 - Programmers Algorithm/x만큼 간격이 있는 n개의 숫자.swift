/*
 x만큼 간격이 있는 n개의 숫자
 https://school.programmers.co.kr/learn/courses/30/lessons/12954
 
 함수 solution은 정수 x와 자연수 n을 입력 받아,
 x부터 시작해 x씩 증가하는 숫자를 n개 지니는 리스트를 리턴해야 합니다.
 다음 제한 조건을 보고, 조건을 만족하는 함수, solution을 완성해주세요.
 */

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var arr: [Int64] = []
    for i in 1...n {
        arr.append(Int64(x * i))
    }
    
    return arr
}

//Array에 n까지 담아놓고 mapping으로 x값 곱해주기!
func solution2(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).map { Int64($0 * x) }
}
