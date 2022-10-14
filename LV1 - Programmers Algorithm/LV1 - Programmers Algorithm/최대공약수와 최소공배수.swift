/*
 최대공약수와 최소공배수
 
 문제 설명
 두 수를 입력받아 두 수의 최대공약수와 최소공배수를 반환하는 함수, solution을 완성해 보세요. 배열의 맨 앞에 최대공약수, 그다음 최소공배수를 넣어 반환하면 됩니다. 예를 들어 두 수 3, 12의 최대공약수는 3, 최소공배수는 12이므로 solution(3, 12)는 [3, 12]를 반환해야 합니다.

 
 제한 사항
 두 수는 1이상 1000000이하의 자연수입니다.
 
 입출력 예
 n    m    return
 3    12    [3, 12]
 2    5    [1, 10]
 */

import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    var answer = [Int]()
    let nDevided = Array(1...n).filter { n % $0 == 0 }
    let mDevided = Array(1...m).filter { m % $0 == 0 }

    answer.append(nDevided.filter { mDevided.contains($0) }.sorted().last!)
    answer.append(n * m / answer[0])

    return answer
}

//방법 2:
// 최소공약수 구하는법은 작은수를 큰수로 나눴을 때 나머지이고 나머지가 0일때는 둘 중 작은 숫자를 리턴
// a,b중 작은수를 모르므로 0이 아닐시에 뒤집어서 하도록 진행..
// Least Common Multiple (LCM)/ Gratest Common Multiple (LCM)
func gcd(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return 0 == mod ? min(a, b) : gcd(b, mod)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func solution2(_ n:Int, _ m:Int) -> [Int] {
    return [gcd(n, m), lcm(n, m)]
}
