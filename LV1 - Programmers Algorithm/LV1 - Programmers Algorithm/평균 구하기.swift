/*
 평균구하기
 https://school.programmers.co.kr/learn/courses/30/lessons/12944
 정수를 담고 있는 배열 arr의 평균값을 return하는 함수, solution을 완성해보세요.

 제한사항
 arr은 길이 1 이상, 100 이하인 배열입니다.
 arr의 원소는 -10,000 이상 10,000 이하인 정수입니다.
 */

//오답 : 타입!!! Int로 나누면 값이 정확하지 않으므로
// Double을 지정해줘야해요 분모 분자 모두 다!

import Foundation

func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce (0, +)) / Double(arr.count)
}

let a = [1,2,3,4]
let b = a.reduce (0, +)
let c = a.count
print(b)
print(c)
print(solution([1,2,3,4]))
