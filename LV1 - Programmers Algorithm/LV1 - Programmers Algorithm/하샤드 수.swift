/*
 하샤드 수
 https://school.programmers.co.kr/learn/courses/30/lessons/12947
 양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어져야 합니다. 예를 들어 18의 자릿수 합은 1+8=9이고, 18은 9로 나누어 떨어지므로 18은 하샤드 수입니다. 자연수 x를 입력받아 x가 하샤드 수인지 아닌지 검사하는 함수, solution을 완성해주세요.
 */

import Foundation

func solution(_ x:Int) -> Bool {
    let sum = String(x).map{ Int(String($0))! }.reduce(0, +)
    return x % sum == 0
}

// 2. mapping없이 String체로 reduce 메서드를 사용할 수 있다. reduce 안의 클로저에서 Int로 수정해줘야한다
func solution2(_ x:Int) -> Bool {
    return x % String(x).reduce(0, {$0+Int(String($1))!}) == 0
}
