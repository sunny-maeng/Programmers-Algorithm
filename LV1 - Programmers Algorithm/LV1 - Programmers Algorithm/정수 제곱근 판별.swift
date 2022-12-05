/*
 정수 제곱근 판별
 https://school.programmers.co.kr/learn/courses/30/lessons/12934
 임의의 양의 정수 n에 대해, n이 어떤 양의 정수 x의 제곱인지 아닌지 판단하려 합니다.
 n이 양의 정수 x의 제곱이라면 x+1의 제곱을 리턴하고,
 n이 양의 정수 x의 제곱이 아니라면 -1을 리턴하는 함수를 완성하세요.
 제한사항: n은 1이상, 50000000000000 이하인 양의 정수입니다.*/

import Foundation

func solution(_ n:Int64) -> Int64 {
    for x in 1...n {
        if n == (x * x) {
            return  (x+1) * (x+1)
        }
    }
    return -1
}

print(solution(121))
print(solution(1))
print(solution(3))


//내가 픽한 모범 답안 sqrt를 이용. sqrt는 Double타입을 취하므로 다시 Int64로 바꿔주서 t에 담는다.
func solution2 (_ n:Int64) -> Int64 {
    let t = Int64(sqrt(Double(n)))
    return t * t == n ? (t+1)*(t+1) : -1
}


