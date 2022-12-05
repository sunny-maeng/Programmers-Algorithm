/*
 자연수 뒤집어 배열로 만들기
 ✅
 ❌(221201): 잊지말자 reversed().......
 https://school.programmers.co.kr/learn/courses/30/lessons/12932
 자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴해주세요.
 예를들어 n이 12345이면 [5,4,3,2,1]을 리턴합니다.

 제한 조건
 n은 10,000,000,000이하인 자연수입니다.
 */

import Foundation

func solution(_ n:Int64) -> [Int] {
    return  "\(n)".compactMap { $0.hexDigitValue }.reversed()
}

func solution(_ n:Int64) -> [Int] {
    return String(n).map{$0.wholeNumberValue!}.reversed()
}

func solution(_ n:Int64) -> [Int] {
    return String(n).map{ Int(String($0))! }.reversed()
}

print(solution(12345)) // [5,4,3,2,1]
