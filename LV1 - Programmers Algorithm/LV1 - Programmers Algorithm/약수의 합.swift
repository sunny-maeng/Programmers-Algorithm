/*
 약수의 합 ✅ ✅(221201)
 https://school.programmers.co.kr/learn/courses/30/lessons/12928
정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.
 제한: n은 0 이상 3000이하인 정수입니다.
 */

//오답 :  0일 때를 생각하지 못해서 0일때 for 구문이 돌지 못해서 오류났었음
// if n == 0 일 때 추가해줌. 답지보니까 guard 처리가 나을 것 같음.

import Foundation

func solution2(_ n:Int) -> Int {
    guard n != 0 else {
        return 0
    }
    return Array(1...n).filter{n % $0 == 0}.reduce(0, +)
}
